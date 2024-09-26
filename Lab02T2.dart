import 'dart:async';
import 'dart:math';

Future<String> fetchWeatherData() async {
  print('Fetching weather data...');

  await Future.delayed(Duration(seconds: 3));

  bool success = Random().nextBool();

  if (success) {
    return 'Weather: Sunny, 25°C';
  } else {
    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  try {
    String weather = await fetchWeatherData();
    print('Weather data received: $weather');
  } catch (e) {
    print('Error: $e');
  }
}
