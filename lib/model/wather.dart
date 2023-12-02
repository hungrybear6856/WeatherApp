class Weathermodel {
  String cityName;
  String weatherCondetion;
  double mainTemperature;
  double maxTemperature;
  double temp;

//  final Icon icon;

  Weathermodel({
    required this.temp,
    required this.mainTemperature,
    required this.maxTemperature,
    required this.weatherCondetion,
    required this.cityName,
  }); // required this.icon});
  factory Weathermodel.fromjson(json) {
    return Weathermodel(
      temp: json['main']['temp'],
      mainTemperature: json['main']['temp_min'],
      maxTemperature: json['main']['temp_max'],
      cityName: json['name'],
      weatherCondetion: json["weather"][0]["main"],
    );
  }
}
