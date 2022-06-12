// import 'dart:convert';

// import 'package:http/http.dart' as http;
// void main(List<String> arguments)async {
// final apiUrl = 'https://api.openweathermap.org/data/2.5/';
// // final apiKey = 'd329447e77e3c4a66081d1bf974cbeb8';
// // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
// String city = arguments.first;
// final response = await http.get(Uri.parse('${apiUrl}weather?q=$city&appid=d329447e77e3c4a66081d1bf974cbeb8'));
//   print('City: ${arguments.first}');
//   displayWeather(jsonDecode(response.body));

// }
// displayWeather(Map json){
// print('Weather description: ${json['weather'].first['description']}');
// print('Temperature: ${(json['main']['temp']-273.15).ceil()}\u{00B0} Celsius');
// }

import 'dart:io';
import 'package:weather_app/weather.dart';

void main(List<String> args) async{
  if (args.isEmpty) {
    print('Missing <CITY> name....');
    exit(1);
  }
  WeatherApi response = WeatherApi();
  print( await response.getResponse(args.first));
}
