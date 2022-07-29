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
int Errores = 0;
// 0 - Sin errores
// 1 - Laboratorio Parado
// 2 - Laboratorio incorrecto.
// 3 - Error de comunicación UART
//----------------------------------------------//
//------- Defino variables globales
// Nombres para los pines GPIO
// Cyclone II
  #define Pulsador_II_0 6
  #define Pulsador_II_1 7
  #define Pulsador_II_2 8
  #define Pulsador_II_3 9
  // Leds
  #define Led_II_0 10 // Indicador 0
  #define Led_II_1 11 // Indicador 1
  #define Led_II_2 12 // Indicador 2
  #define Led_II_3 13 // Indicador 3
// Cyclone IV
  #define Pulsador_IV_0 30
  #define Pulsador_IV_1 31
  #define Pulsador_IV_2 32
  #define Pulsador_IV_3 33
  // Leds
  #define Led_IV_0 34 // Indicador 0
  #define Led_IV_1 35 // Indicador 1
  #define Led_IV_2 36 // Indicador 2
  #define Led_IV_3 37 // Indicador 3
  // Manejo del serial
  #define velocidad_serial_default 115200
//////// VAriables Locales de json //////////////
// Estado
  int num_Lab=0;
  bool subLab=0;// False = CycloneII / True= CycloneIV
  bool iniLab=false;
// Velocidad
  uint32_t velocidad_serial=115200;
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
  int conta=0;
  
//----------------------------------------------//
// Realizo las configuraciones iniciales
void setup() {
  uint8_t myMAC[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED}; // defino mac del dispositivo.
  IPAddress myIP(192,168,1,108); // 172.20.5.140 Defino IP Address del dispositivo. 
  Serial.begin(velocidad_serial_default); // Inicializo Puerto serial 0 
  Serial1.begin(velocidad_serial_default); // Inicializo Puerto serial 1 - CII - GPIO 19 tx 18 rx
  Serial2.begin(velocidad_serial_default); // Inicializo Puerto serial 2 - CIV - GPIO 16 tx 17 rx
  while (!Serial) continue; 
  Ethernet.begin(myMAC,myIP);  // Inicializo libreria Ethernet
  server.begin(); // Start to listen
  Serial.println(F("Server is ready."));
  Serial.print(F("Please connect to http://"));
  Serial.println(Ethernet.localIP());
  Serial.println("Port:" + (String)server_port);
// ------- Defino GPIO MODE (INPUT/OUTPUT)--------  //  
//Cyclone II
  pinMode(Led_II_0,INPUT);
  pinMode(Led_II_1,INPUT);
  pinMode(Led_II_2,INPUT);
  pinMode(Led_II_3,INPUT);
  pinMode(Pulsador_II_0,OUTPUT);
  pinMode(Pulsador_II_1,OUTPUT);
  pinMode(Pulsador_II_2,OUTPUT);
  pinMode(Pulsador_II_3,OUTPUT);
//Cyclone IV
  pinMode(Led_IV_0,INPUT);
  pinMode(Led_IV_1,INPUT);
  pinMode(Led_IV_2,INPUT);
  pinMode(Led_IV_3,INPUT);
  pinMode(Pulsador_IV_0,OUTPUT);
  pinMode(Pulsador_IV_1,OUTPUT);
  pinMode(Pulsador_IV_2,OUTPUT);
  pinMode(Pulsador_IV_3,OUTPUT);
  //------ Definir estados iniciales ------//
}

void loop(){  
  //////////// Strings de comunicación /////////////
  char Mensaje_recibido[const_mje] = {0}; // Mensaje recibido por ethernet. (Comando + JSON) 
  char valores_recibidos[const_valores] = {0}; // JSON recibido.  // Wait for an incomming connection
  EthernetClient client = server.available(); 
  if(client){ // Si tengo un cliente conectado
    while (client.available()){ 
      if(bandera_rep==1)bandera_rep=0;//reinicio bandera de repetición cuando tengo un mje nuevo.
//      Serial.println("New Command");
      client.readBytesUntil('\r', Mensaje_recibido, sizeof(Mensaje_recibido)); // Tomo el mensaje recibido.
      strncpy(valores_recibidos,&Mensaje_recibido[15],(sizeof(Mensaje_recibido)-15)); 
      Serial.print("Mensaje Recibido: ");
      Serial.println(Mensaje_recibido);   
      Serial.print("Json_Recibido" + String(valores_recibidos));   
      //------ GET ----- //
      if (strstr(Mensaje_recibido, "GET /HTTP/1.1") != NULL) { // Compruebo si llega un GET, respondo valores actuales
        StaticJsonDocument<256> doc;     
        JsonArray Estado = doc.createNestedArray("Estado");
        Estado.add(num_Lab);
        Estado.add(subLab);
        Estado.add(iniLab);
        
        JsonArray Indicadores = doc.createNestedArray("Indicadores");
        Indicadores.add(indicador_0);
        Indicadores.add(indicador_1);
        Indicadores.add(indicador_2);
        Indicadores.add(indicador_3);

        doc["velocidad"] = velocidad_serial;

        doc["Serial"] = Serial_rx;

        doc["Error"] = Errores;

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
        Errores=0;
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
        subLab = Estado[1]; // 0 [Sub Lab 1 con Cyclone II], 1 [SubLab 2 con Cyclone IV]
        iniLab = Estado[2]; // 1 [Inicia Experimento], 0 [Finaliza Experimento]

        if(num_Lab==0){ // Control de numero de lab.
          velocidad_serial = doc["velocidad"];
       
          JsonArray Pulsadores = doc["Pulsadores"];
          pulsador_0 = Pulsadores[0];
          pulsador_1 = Pulsadores[1];
          pulsador_2 = Pulsadores[2];
          pulsador_3 = Pulsadores[3];

          Serial_rx = doc["Serial"]; // "Mensaje serial"
          Serial.println((String)Serial_rx);
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
  if(num_Lab==0 and bandera_rep==0){ // Control de numero de lab.
    if (subLab and iniLab){
      Serial.println("Sub - Laboratorio: Comunicación UART"); 
 //     Serial1.begin(velocidad_serial); // asigno la velocidad al serial 1
 //     Serial.println(velocidad_serial);
      asignarPines(Pulsador_II_0,Pulsador_II_1,Pulsador_II_2,Pulsador_II_3,Led_II_0,Led_II_1,Led_II_2,Led_II_3);
      Comunicacion(false);
    }
    else if (!subLab and iniLab){
      Serial.println("Sub - Laboratorio: Comunicación I2C");  
  //    Serial2.begin(velocidad_serial); // asigno la velocidad al serial 2
 //     Serial.println(velocidad_serial);
      asignarPines(Pulsador_IV_0,Pulsador_IV_1,Pulsador_IV_2,Pulsador_IV_3,Led_IV_0,Led_IV_1,Led_IV_2,Led_IV_3);
      Comunicacion(true);
    }
    else{
      if(bandera_rep==0){
        Serial.println("Laboratorio Parado");
        bandera_rep=1;
        Errores =1;
      }
    }
  }
  else{
    if(bandera_rep==0){
      Serial.println("Laboratorio incorrecto");  
      bandera_rep = 1; 
      Errores=2;
    }
  }
}

/**
 * @brief Selecciona las salidas y entradas en base a la placa elegida
 * 
 * @param pul_0 
 * @param pul_1 
 * @param pul_2 
 * @param pul_3 
 * @param led_0 
 * @param led_1 
 * @param led_2 
 * @param led_3 
 */
void asignarPines(int pul_0,int pul_1,int pul_2,int pul_3,int led_0,int led_1,int led_2,int led_3){
//    Serial.println("Escribo pulsadores");
    digitalWrite(pul_0,pulsador_0);
    digitalWrite(pul_1,pulsador_1);
    digitalWrite(pul_2,pulsador_2);
    digitalWrite(pul_3,pulsador_3);
//    Serial.println("Leo indicadores");
    indicador_0 = digitalRead(led_0);
    indicador_1 = digitalRead(led_1);
    indicador_2 = digitalRead(led_2);
    indicador_3 = digitalRead(led_3);
}


/**
 * @brief Función utilizada para la selección de puerto serial a leer.
 * 
 * @param Serial_out Serial de comunicación [False(Cyclone II),True(Cyclone IV)]
 */
void Comunicacion(bool Serial_out){
  if(!Serial_out){// Sub lab 1
    Serial1.write("Hola serial 2");
    delay(10);
    Serial.write(Serial2.readBytesUntil('\r', Serial_rx, sizeof(Serial_rx)););    
  }
  else{// Sub lab 2
  }
}
