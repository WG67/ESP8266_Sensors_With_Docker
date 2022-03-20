



#ifdef ESP32
  #include <WiFi.h>
  #include <HTTPClient.h>
#else
  #include <ESP8266WiFi.h>
  #include <ESP8266HTTPClient.h>
  #include <WiFiClient.h>
#endif



//replace with your network ssid
const char* ssid = "";

//replace with your ssid password
const char* password = "";

// Domain name and URL path or IP address with path
const char* serverName = "http://192.168.1.66/sensordata/post-esp-data.php";


String apiKeyValue = "tPmAT5Ab3j7F9";

String sensorName = "Turbidity";
String sensorLocation = "Chain-Bridge";

/*#include <SPI.h>
#define BME_SCK 18
#define BME_MISO 19
#define BME_MOSI 23
#define BME_CS 5*/

#define SEALEVELPRESSURE_HPA (1013.25)


int sensorValue;
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;


void setup() {
  Serial.begin(115200);
  
  WiFi.begin(ssid, password);
  Serial.println("Connecting");
  while(WiFi.status() != WL_CONNECTED) { 
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to WiFi network with IP Address: ");
  Serial.println(WiFi.localIP());




}


void loop()  {
  //Check WiFi connection status
  if(WiFi.status()== WL_CONNECTED){
    WiFiClient client;
    HTTPClient http;
    
    //Domain name with URL path or IP address with path
    http.begin(client, serverName);
    
    // Specify content-type header
    http.addHeader("Content-Type", "application/x-www-form-urlencoded");

    // Allows use to have a proof on concept with the random values to give the apperence of data being given 
    int temp = random(8,11);
    int temp2 = random(100,200);
    
    // Prepare your HTTP POST request data
    String httpRequestData = "api_key=" + apiKeyValue + "&sensor=" + sensorName
                           + "&location=" + sensorLocation + "&value1=" + String(temp2) + "&value2=" + String(temp);
    Serial.print("httpRequestData: ");
    Serial.println(httpRequestData);

  sensorValue = analogRead(0);       // read analog input pin 0
  Serial.print("AirQua=");
  Serial.print(sensorValue, DEC);               // prints the value read
  Serial.println(" PPM");
  delay(100);                                   // wait 100ms for next reading
    
    


    // Send HTTP POST request
    int httpResponseCode = http.POST(httpRequestData);
     
        
    if (httpResponseCode>0) {
      Serial.print("HTTP Response code: ");
      Serial.println(httpResponseCode);
    }
    else {
      Serial.print("Error code: ");
      Serial.println(httpResponseCode);
    }
    // Free resources
    http.end();
  }
  else {
    Serial.println("WiFi Disconnected");
  }
  //Send an HTTP POST request every 10 seconds
  delay(10000);  
}
