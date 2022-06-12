import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user.dart';

class WeatherApi {
  final apiUrl = 'https://api.openweathermap.org/data/2.5/';

  Future<User> getResponse(String city) async {
    final _response = await http.get(Uri.parse(
        '${apiUrl}weather?q=$city&appid=d329447e77e3c4a66081d1bf974cbeb8'));
    final User u1 = User.setValues(jsonDecode(_response.body));
    return u1;
  }
}
