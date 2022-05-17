#include <ArduinoJson.h>
#include <UIPEthernet.h>

#define const_status 190
#define const_instruc 170

EthernetServer server = EthernetServer(22);
//////// VAriables Locales de json //////////////
// Estado
  int num_Lab=0;
  bool subLab=true;
  bool iniLab=false;
// Pulsadores
  bool pulsador_0=false;
  bool pulsador_1=false;
  bool pulsador_2=false;
  bool pulsador_3=false;
// Llaves
  bool indicador_0=false;
  bool indicador_1=false;
  bool indicador_2=false;
  bool indicador_3=false;
// UART
  char* Serial_rx;
////////////// Funciones  ////////////////////
void Comunicacion(bool pulsador_0, bool pulsador_1, bool pulsador_2,bool pulsador_3,EthernetClient client);
//-------------------//
void get_json(EthernetClient client);
void post_json(char instrucciones[const_instruc], EthernetClient client);
//////////// Declaración de salidas ///////////////////
// ------------- UART ----------------- //
//#define rxPin 3
//#define txPin 4
// -------------- Pulsadores -------------//
#define Pul_0  4
#define Pul_1  5
#define Pul_2  6
#define Pul_3  7
// -------------- Indicadores --------------//
#define ind_0  8
#define ind_1  9
#define ind_2  10
#define ind_3  11

void setup() 
{
///////////////////////////////////////////////////
// Initialize serial port
  Serial.begin(9600);
  while (!Serial) continue;
  Serial3.begin(9600);
  while (!Serial3) continue;
///////////////////////////////////////////////////
// INICIALIZO MAC E IP
  uint8_t mac[6] = {0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED};
  IPAddress myIP(172,20,5,140);
// Initialize Ethernet libary
  Ethernet.begin(mac,myIP);  
// Start to listen
  server.begin();
  Serial.println(F("Server is ready."));
  Serial.print(F("Please connect to http://"));
  Serial.println(Ethernet.localIP());
///////////////////////////////////////////////////
// Declaro tipo  y estado de las salidas  
// ----- Pulsadores ------ //
  pinMode(Pul_0, OUTPUT);
  digitalWrite(Pul_0,LOW);
  pinMode(Pul_1, OUTPUT);
  digitalWrite(Pul_1,LOW);
  pinMode(Pul_2, OUTPUT);
  digitalWrite(Pul_2,LOW);
  pinMode(Pul_3, OUTPUT);
  digitalWrite(Pul_3,LOW);
// -------- Indicadores -----//
  pinMode(ind_0, INPUT);
  pinMode(ind_1, INPUT);
  pinMode(ind_2, INPUT);
  pinMode(ind_3, INPUT);
}

void loop()
{  
//////////// Strings de comunicación /////////////
  char status[const_status] = {0};
  char instrucciones[const_instruc] = {0};


  // Wait for an incomming connection
  EthernetClient client = server.available(); 
  // Do we have a client?
  if (!client) return;
  Serial.println();
  Serial.println(F("New client"));
  // Read the request (we ignore the content in this example)
  while (client.available()) 
  {
    client.readBytesUntil('\r', status, sizeof(status));
    Serial.println("status:");
    Serial.println(status);
  //obtengo las instrucciones del formato json
    strncpy(instrucciones,&status[15],(sizeof(status)-15));
  //------ GET ----- //
    if (strstr(status, "GET / HTTP/1.1") != NULL) 
    {
      get_json(client);
    }
  //------- POST -----//      
    if (strstr(status, "POST / HTTP/1.1") !=NULL) 
    {
      post_json(instrucciones, client);
    }
  }
}

void get_json(EthernetClient client)
{
      StaticJsonDocument<256> doc;     
      JsonArray Estado = doc.createNestedArray("Estado");
      Estado.add(num_Lab);
      Estado.add(subLab);
      Estado.add(iniLab);

      JsonArray Pulsadores = doc.createNestedArray("Pulsadores");
      Pulsadores.add(pulsador_0);
      Pulsadores.add(pulsador_1);
      Pulsadores.add(pulsador_2);
      Pulsadores.add(pulsador_3);

      JsonArray Indicadores = doc.createNestedArray("Indicadores");
      Indicadores.add(indicador_0);
      Indicadores.add(indicador_1);
      Indicadores.add(indicador_2);
      Indicadores.add(indicador_3);

      doc["Serial"] = Serial_rx;
      
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
//      client.stop();
}

void post_json(char instrucciones[const_instruc], EthernetClient client)
{
  Serial.println("Solicitud de escritura recibida");        
  client.println();
  client.println(F("HTTP/1.1 200 OK"));
  client.println();
  StaticJsonDocument<256> doc;
  // Deserializo
  DeserializationError error = deserializeJson(doc, instrucciones);
  
  if (error) 
  {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.f_str());
    return;
  }
  
  JsonArray Estado = doc["Estado"];
  num_Lab = Estado[0]; // 0 [Sist Dig], 1 [Sist Control], 2[Telecomunicaciones], 3[Fisica]
  subLab = Estado[1]; // true[SubLab 1], false [SubLab 2]
  iniLab = Estado[2]; // true[Inicia Experimento], false[Finaliza Experimento]

  JsonArray Pulsadores = doc["Pulsadores"];
  pulsador_0 = Pulsadores[0]; // false
  pulsador_1 = Pulsadores[1]; // false
  pulsador_2 = Pulsadores[2]; // false
  pulsador_3 = Pulsadores[3]; // false

  Serial_rx = doc["Serial"]; // "Mensaje serial"

  if(num_Lab==0)
  {
    if (subLab and iniLab)
    {
      Serial.println("Sub - Laboratorio: Comunicación UART"); 
      Comunicacion(pulsador_0,pulsador_1,pulsador_2,pulsador_3,client);
    }
    else if (!subLab and iniLab)
    {
      Serial.println("Sub - Laboratorio: Comunicación I2C");  
      Comunicacion(pulsador_0,pulsador_1,pulsador_2,pulsador_3,client);
    }
    else
    {
      Serial.println("Laboratorio Parado");    
    }     
  }
  else
  {
    Serial.println("Laboratorio incorrecto");    
  }
}

void Comunicacion(bool pulsador_0, bool pulsador_1, bool pulsador_2,bool pulsador_3,EthernetClient client)
{
  char recibo[20] = {0};
  Serial.println("Escribo pulsadores");
  digitalWrite(Pul_0,pulsador_0);
  digitalWrite(Pul_1,pulsador_1);
  digitalWrite(Pul_2,pulsador_2);
  digitalWrite(Pul_3,pulsador_3);
  Serial.println("Leo indicadores");
  indicador_0 = digitalRead(ind_0);
  indicador_1 = digitalRead(ind_1);
  indicador_2 = digitalRead(ind_2);
  indicador_3 = digitalRead(ind_3);
  Serial.println("Escribo y leo Serial");
//  Serial.write(Serial3.read());
  Serial3.readBytesUntil('\r', recibo, sizeof(recibo));
//  Serial.println(recibo);

/*
  Serial.println(Serial3.read());
  client.println(Serial3.read());
  client.println(F("Envio Chau"));
  client.println();*/
  // Disconnect
//  client.stop();
}
