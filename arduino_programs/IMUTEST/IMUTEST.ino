void setup() {
  while (!Serial);

  Serial.begin(115200);
}


void loop() {
    Serial.print("test and test\n")
    delay(500);
}
