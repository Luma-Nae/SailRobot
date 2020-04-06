void setup() {
  while (!Serial);

  Serial.begin(115200);
}


void loop() {
    Serial.write("test ");
    delay(500);
}
