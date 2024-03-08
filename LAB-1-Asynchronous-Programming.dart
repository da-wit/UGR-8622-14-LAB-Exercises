import 'dart:convert';
// import 'package:http/http.dart' as http;
import 'package:http/http.dart' as http;

// Exercise 1: Asynchronous function to get a random quote
Future<String> fetchRandomQuote() async {
  return "Be yourself; everyone else is already taken. - Oscar Wilde";
}

// Exercise 2: Asynchronous function to download a file
Future<void> downloadFile(String url) async {
  print("Downloading file from $url...");
  // Simulating download process
  print("Download complete!");
}

// Exercise 3: Asynchronous function to load data from a database
Future<List<String>> fetchDataFromDatabase() async {
  // Simulating database query delay
  return ["Data1", "Data2", "Data3"];
}

// Exercise 4: Fetching weather data from the actual WeatherAPI
class WeatherApi {
  static Future<Map<String, dynamic>> getWeatherData(String city) async {
    // Replace "your-api-key" with your actual API key from weatherapi.com
    String apiKey = "your-api-key";
    String apiUrl =
        "http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$city";

    try {
      http.Response response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Parse the JSON response
        Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception(
            "Failed to fetch weather data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error connecting to the API: $e");
    }
  }
}

Future<void> main() async {
  // Exercise 1
  print("Exercise 1: Fetching a random quote...");
  String quote = await fetchRandomQuote();
  print("Quote: $quote");

  // Exercise 2
  print("\nExercise 2: Downloading a file...");
  await downloadFile("https://example.com/sample.txt");

  // Exercise 3
  print("\nExercise 3: Loading data from a database...");
  List<String> data = await fetchDataFromDatabase();
  print("Data from the database: $data");

  // Exercise 4: Fetching weather data using the WeatherAPI
  print("\nExercise 4: Fetching weather data...");
  String city = "New York";
  try {
    Map<String, dynamic> weatherData = await WeatherApi.getWeatherData(city);
    print(
        "Current Temperature in $city: ${weatherData["current"]["temp_c"]}°C");
    print("Weather Conditions: ${weatherData["current"]["condition"]["text"]}");
  } catch (e) {
    print("Error: $e");
  }
}
