class User {
  final String city;
  final String weatherDescription;
  final int temperature;

  User(
      {required this.city,
      required this.weatherDescription,
      required this.temperature});

  static setValues(Map json) {
    return User(
        city: json['name'],
        weatherDescription: json['weather'].first['description'],
        temperature: (json['main']['temp'] - 273.15).ceil());
  }

  @override
  String toString() => '''
  CITY: $city
  TEMPERATURE: $temperature\u{00B0} Celsius
  WEATHER DESCRIPTION: $weatherDescription
''';
}
