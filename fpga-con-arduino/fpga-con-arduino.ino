char inputString_2[100] = {0};// a String to hold incoming data
 
void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);
  Serial2.begin(9600);
  Serial.println("Inicio");
}
 
void loop() {
  if (Serial2.available()) {
    Serial2.readBytes(inputString_2, sizeof(inputString_2));
    Serial.println("Serial2: " + (String)inputString_2);
    if (strstr(inputString_2, "Hola") != NULL){
      digitalWrite(13, HIGH);
      Serial2.println(inputString_2);
    }
    else if (strstr(inputString_2, "Chau") != NULL){
      digitalWrite(13, LOW);
      Serial2.println(inputString_2);
    }
    inputString_2 [100]= 0;
    }
}
