//4. Weather Report:
//Use Map and List to create a program that stores weather data for different cities (temperature,
//humidity, etc.). Write a function that can retrieve and print weather details using a city name.

void main() {
  Map<String, Map<String, dynamic>> weatherData = {
    'Cairo': {'temperature': 25, 'Humidity': 60},
    'Alexandria': {'temperature': 22, 'Humidity': 70},
    'Aswan': {'temperature': 35, 'Humidity': 30},
  };
  String city = 'Cairo';
  if (weatherData.containsKey(city)) {
    print("Weather details in$city:");
    print("temperature: ${weatherData[city]!['temperature']} degrees Celsius");
    print("Humidity: ${weatherData[city]!['Humidity']}%");
  } else {
    print("There is no weather data for the city.$city.");
  }
}
