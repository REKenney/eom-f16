/**
* Adapted from
 * Loading JSON Data
 * by Daniel Shiffman.  
 * 
 * This example demonstrates how to use loadJSONObject/Array()
 * to retrieve JSON data via URL
 *
 *
 * 
 */

// We're going to store the temperature
int temperature = 0;
// We're going to store text about the weather
String weather = "";

/* 
* create an account at https://home.openweathermap.org/
* copy your API key from https://home.openweathermap.org/api_keys to here
*/
String apiKey = "";

void setup() {
  if(apiKey == ""){
    println("Paste in your API key!");
    noLoop();
    exit();
  }
  size(200, 200);

  // The URL for the JSON data (replace "imperial" with "metric" for celsius)
  String url = "http://api.openweathermap.org/data/2.5/weather?q=New%20York&units=imperial&APPID="+apiKey;

  // Load the XML document
  JSONObject json = loadJSONObject(url);

  // Get the temperature
  JSONObject main = json.getJSONObject("main");
  temperature = main.getInt("temp");

  // Grab the description, look how we can "chain" calls.
  weather = json.getJSONArray("weather").getJSONObject(0).getString("description");

}

void draw() {
  background(255);
  fill(0);

  // Display all the stuff we want to display
  text("City: New York", 10, 50);
  text("Current temperature: " + temperature, 10, 70);
  text("Forecast: " + weather, 10, 90);
}

/*
{
  "coord":{
    "lon":-74.01,
    "lat":40.71
  },
  "sys":{
    "message":0.2012,
    "country":"US",
    "sunrise":1406540974,
    "sunset":1406592927
  },
  "weather":[
    {
      "id":801,
      "main":"Clouds",
      "description":"few clouds",
      "icon":"02d"
    }
  ],
  "base":"cmc stations",
  "main":{
    "temp":73.45,
    "humidity":83,
    "pressure":999,
    "temp_min":70,
    "temp_max":75.99
  },
  "wind":{
    "speed":4.45,
    "gust":3.6,
    "deg":259
  },
  "rain":{
    "3h":0
  },
  "clouds":{
    "all":24
  },
  "dt":1406559145,
  "id":5128581,
  "name":"New York",
  "cod":200
}
*/