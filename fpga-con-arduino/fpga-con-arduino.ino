char inputString_1[100] = {0};
char inputString_2[100] = {0};// a String to hold incoming data
 
void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);
  Serial1.begin(19200);
  Serial2.begin(9600);
  Serial.println("Inicio");
}
 
void loop() {
  if (Serial2.available()) {
    Serial2.readBytesUntil('\n',inputString_2,sizeof(inputString_2));
    Serial.println("Serial2: " + (String)inputString_2);
    if (strstr(inputString_2, "Hola") != NULL){
      digitalWrite(13, HIGH);
      Serial2.print("Encendido");
    }
    else if (strstr(inputString_2, "Chau") != NULL){
      digitalWrite(13, LOW);
      Serial2.print("Apagado");
    }
    inputString_2 [100]= 0;
    }
   if (Serial1.available()) {
    Serial1.readBytesUntil('\n',inputString_1,sizeof(inputString_1));
    Serial.println("Serial1: " + (String)inputString_1);
    if (strstr(inputString_1, "Hola") != NULL){
      digitalWrite(13, HIGH);
      Serial1.println("Encendido");
    }
    else if (strstr(inputString_1, "Chau") != NULL){
      digitalWrite(13, LOW);
      Serial1.println("Apagado");
    }
    inputString_1 [100]= 0;
    }    
}
