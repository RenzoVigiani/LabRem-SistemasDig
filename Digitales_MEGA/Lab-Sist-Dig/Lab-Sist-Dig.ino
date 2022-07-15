// Defino las librerias a utilizar
#include <ArduinoJson.h> // Para el manejo y conversión de JSON a vartiables
#include <UIPEthernet.h> // Para el manejo del Shield Ethernet
#include <Servo.h> // Para el manejo de los Servos.
//----------------------------------------------//
// Defino el servidor y el Puerto
#define server_port 22 // 80
EthernetServer server = EthernetServer(server_port);
//----------------------------------------------//
// Defino variables para Json
#define const_mje 256
#define const_valores 236

//char Mensaje_recibido[const_mje] = {0}; // Mensaje recibido por ethernet. (Comando + JSON) 
//char valores_recibidos[const_valores] = {0}; // JSON recibido.
//----------------------------------------------//
//------- Defino mensajes de error predeterminado
// una variable error int
uint8_t Errores = 0;
// 0 - Sin errores
// 1 - Error de distancia.
// 2 - Error de cantidad de medicion.
// 3 - Error de tipo de diafragma.
// 4 - Laboratorio incorrecto.
//----------------------------------------------//
//------- Defino variables globales
// Nombres para los pines GPIO
// Cyclone II
  #define Pulsador_II_0 37
  #define Pulsador_II_1 36
  #define Pulsador_II_2 35
  #define Pulsador_II_3 34
  // Leds
  #define Led_II_0 30 // Indicador 0
  #define Led_II_1 31 // Indicador 1
  #define Led_II_2 32 // Indicador 2
  #define Led_II_3 33 // Indicador 3
// Cyclone IV
  #define Pulsador_IV_0 41
  #define Pulsador_IV_1 40
  #define Pulsador_IV_2 39
  #define Pulsador_IV_3 38
  // Leds
  #define Led_IV_0 49 // Indicador 0
  #define Led_IV_1 48 // Indicador 1
  #define Led_IV_2 47 // Indicador 2
  #define Led_IV_3 46 // Indicador 3
//////// VAriables Locales de json //////////////
// Estado
  int num_Lab=0;
  bool subLab=true;
  bool iniLab=false;
//Placa
  bool placa_cyclone=false; // False = CycloneII / True= CycloneIV
// Pulsadores
  bool pulsador_0=false;
  bool pulsador_1=false;
  bool pulsador_2=false;
  bool pulsador_3=false;
// UART
  char* Serial_rx={"Holis"};
//--- Variables auxiliares ---//
// Indicadores
  bool indicador_0=false;
  bool indicador_1=false;
  bool indicador_2=false;
  bool indicador_3=false;
// banderas
  bool bandera_rep=0; // bandera para limitar la cantidad de repeticiones de mensaje de lab incorrecto 
  bool bandera_fin_m1=0; // bandera para determinar fin de mov de motor 1
  bool bandera_fin_m2=0; // bandera para determinar fin de mov de motor 2
  bool bandera_fin_m3=0; // bandera para determinar fin de mov de motor 3
  bool sentido=0;
//----------------------------------------------//
// Realizo las configuraciones iniciales
void setup() {
  uint8_t myMAC[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED}; // defino mac del dispositivo.
  IPAddress myIP(192,168,1,108); // 172.20.5.140 Defino IP Address del dispositivo. 
  Serial.begin(115200); // Inicializo Puerto serial 0 
  while (!Serial) continue; 
  Ethernet.begin(myMAC,myIP);  // Inicializo libreria Ethernet
  server.begin(); // Start to listen
  Serial.println(F("Server is ready."));
  Serial.print(F("Please connect to http://"));
  Serial.println(Ethernet.localIP());
  Serial.println("Port:" + (String)server_port);
// ------- Defino GPIO MODE (INPUT/OUTPUT)--------  //  
//Cyclone II
  pinMode(Led_II_0,OUTPUT);
  pinMode(Led_II_1,OUTPUT);
  pinMode(Led_II_2,OUTPUT);
  pinMode(Led_II_3,OUTPUT);
  pinMode(Pulsador_II_0,INPUT);
  pinMode(Pulsador_II_1,INPUT);
  pinMode(Pulsador_II_2,INPUT);
  pinMode(Pulsador_II_3,INPUT);
//Cyclone II
  pinMode(Led_IV_0,OUTPUT);
  pinMode(Led_IV_1,OUTPUT);
  pinMode(Led_IV_2,OUTPUT);
  pinMode(Led_IV_3,OUTPUT);
  pinMode(Pulsador_IV_0,INPUT);
  pinMode(Pulsador_IV_1,INPUT);
  pinMode(Pulsador_IV_2,INPUT);
  pinMode(Pulsador_IV_3,INPUT);
  //------ Definir estados iniciales ------//
}

void loop(){  
  //////////// Strings de comunicación /////////////
  char Mensaje_recibido[const_mje] = {0}; // Mensaje recibido por ethernet. (Comando + JSON) 
  char valores_recibidos[const_valores] = {0}; // JSON recibido.  // Wait for an incomming connection
  EthernetClient client = server.available(); 
  if(client){ // Si tengo un cliente conectado
    while (client.available()){ 
      if(bandera_rep==1)bandera_rep=0; //reinicio bandera de repetición cuando tengo un mje nuevo.
      Serial.println("New Command");
      client.readBytesUntil('\r', Mensaje_recibido, sizeof(Mensaje_recibido)); // Tomo el mensaje recibido.
      strncpy(valores_recibidos,&Mensaje_recibido[15],(sizeof(Mensaje_recibido)-15)); 
      Serial.print("Mensaje Recibido: ");
      Serial.println(Mensaje_recibido);   
//      Serial.print("Json_Recibido: ");
//      Serial.println(valores_recibidos);   
      //------ GET ----- //
      if (strstr(Mensaje_recibido, "GET /HTTP/1.1") != NULL) { // Compruebo si llega un GET, respondo valores actuales
        StaticJsonDocument<256> doc;     
        JsonArray Estado = doc.createNestedArray("Estado");
        Estado.add(num_Lab);
        Estado.add(subLab);
        Estado.add(iniLab);

        JsonArray Placa = doc.createNestedArray("Placa");  
        Placa.add(placa_cyclone);
        
        JsonArray Indicadores = doc.createNestedArray("Indicadores");
        Indicadores.add(indicador_0);
        Indicadores.add(indicador_1);
        Indicadores.add(indicador_2);
        Indicadores.add(indicador_3);

        doc["Serial"] = Serial_rx;

        JsonArray Error = doc.createNestedArray("Error");  
        Error.add(Errores);

        Serial.print(F("Sending: "));
        serializeJson(doc, Serial);
        Serial.println();
  // Write response headers
        client.println(F("HTTP/1.0 200 OK"));
        client.println(F("Content-Type: application/json"));
  // client.println(F("Connection: close"));
        client.print(F("Content-Length: "));
        client.println(measureJsonPretty(doc));
        client.println();
  // Write JSON document
        serializeJsonPretty(doc, client);
  // Disconnect
        client.println(F("Get terminado"));
  //      client.stop();
      }
            //------- POST -----//      
      if (strstr(Mensaje_recibido, "POST /HTTP/1.1") !=NULL) { // Compruebo si llega un POST y respondo, habilito banderas.
//        if (bandera_vueltas) {bandera_fin_m1=0; bandera_fin_m2=0; bandera_fin_m3=0; bandera_vueltas=0;}
        Serial.println("Solicitud de escritura recibida");        
        client.println();
        client.println(F("HTTP/1.1 200 OK"));
        client.println();
        StaticJsonDocument<256> doc; // Creo un doc de json
        DeserializationError error = deserializeJson(doc, valores_recibidos); // Deserializo
        if (error){ // Analizo posibles errores.
          Serial.print(F("deserializeJson() failed: "));
          Serial.println(error.f_str());
          return;
        }

        JsonArray Estado = doc["Estado"];
        num_Lab = Estado[0]; // 0 [Sist Dig], 1 [Sist Control], 2[Telecomunicaciones], 3[Fisica]
        subLab = Estado[1]; // 1 [SubLab 1], 0 [SubLab 2]
        iniLab = Estado[2]; // 1 [Inicia Experimento], 0 [Finaliza Experimento]

        if(num_Lab==0){ // Control de numero de lab.
          JsonArray Placa = doc["Placa"];
          placa_cyclone = Placa[0];

          JsonArray Pulsadores = doc["Pulsadores"];
          pulsador_0 = Pulsadores[0];
          pulsador_1 = Pulsadores[1];
          pulsador_2 = Pulsadores[2];
          pulsador_3 = Pulsadores[3];

          Serial_rx = doc["Serial"]; // "Mensaje serial"
        }
      }
    }
  }  
  else{ // Si no está el cliente enviando algo, sigo haciendo lo que corresponde.
    Control();
  }
}
/**
 * @brief Funcion utilizada para el control de laboratorios. "Se analiza las variables de entrada y se ejecuta lo necesario"
 * 
 */
void Control(){
  if(num_Lab==3){ // Control de numero de lab.
    if (subLab and iniLab){
      Serial.println("Sub - Laboratorio: Comunicación UART"); 
      Comunicacion(pulsador_0,pulsador_1,pulsador_2,pulsador_3);
    }
    else if (!subLab and iniLab){
      Serial.println("Sub - Laboratorio: Comunicación I2C");  
      Comunicacion(pulsador_0,pulsador_1,pulsador_2,pulsador_3);
    }
    else{
      if(bandera_rep==0){
        Serial.println("Laboratorio Parado");
        bandera_rep=1;
      }
    }
  }
  else{
    if(bandera_rep==0){
      Serial.println("Laboratorio incorrecto");  
      bandera_rep = 1; 
      Errores=4;
    }
  }
//  hacer();
//  delay(500);
}

/**
 * @brief 
 * 
 * @param pulsador_0 
 * @param pulsador_1 
 * @param pulsador_2 
 * @param pulsador_3 
 */
void Comunicacion(bool pulsador_0, bool pulsador_1, bool pulsador_2,bool pulsador_3){
  char recibo[20] = {0};
  if(!placa_cyclone){
  //  Serial.println("Escribo pulsadores");
    digitalWrite(Pulsador_II_0,pulsador_0);
    digitalWrite(Pulsador_II_1,pulsador_1);
    digitalWrite(Pulsador_II_2,pulsador_2);
    digitalWrite(Pulsador_II_3,pulsador_3);
  //  Serial.println("Leo indicadores");
    indicador_0 = digitalRead(Led_II_0);
    indicador_1 = digitalRead(Led_II_1);
    indicador_2 = digitalRead(Led_II_2);
    indicador_3 = digitalRead(Led_II_3);
  }
  else{
//    Serial.println("Escribo pulsadores");
    digitalWrite(Pulsador_IV_0,pulsador_0);
    digitalWrite(Pulsador_IV_1,pulsador_1);
    digitalWrite(Pulsador_IV_2,pulsador_2);
    digitalWrite(Pulsador_IV_3,pulsador_3);
//    Serial.println("Leo indicadores");
    indicador_0 = digitalRead(Led_IV_0);
    indicador_1 = digitalRead(Led_IV_1);
    indicador_2 = digitalRead(Led_IV_2);
    indicador_3 = digitalRead(Led_IV_3);
  }
  Serial.println("Escribo y leo Serial");
//  Serial.write(Serial3.read());
//  Serial3.readBytesUntil('\r', recibo, sizeof(recibo));
//  Serial.println(recibo);
}
