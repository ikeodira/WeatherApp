import 'weather.dart';

class Current {
  num? dt;
  num? sunrise;
  num? sunset;
  num? temp;
  num? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPoint;
  num? uvi;
  num? clouds;
  num? visibility;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;

  Current({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.uvi,
    this.clouds,
    this.visibility,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        dt: num.tryParse(json['dt'].toString()),
        sunrise: num.tryParse(json['sunrise'].toString()),
        sunset: num.tryParse(json['sunset'].toString()),
        temp: num.tryParse(json['temp'].toString()),
        feelsLike: num.tryParse(json['feels_like'].toString()),
        pressure: num.tryParse(json['pressure'].toString()),
        humidity: num.tryParse(json['humidity'].toString()),
        dewPoint: num.tryParse(json['dew_point'].toString()),
        uvi: num.tryParse(json['uvi'].toString()),
        clouds: num.tryParse(json['clouds'].toString()),
        visibility: num.tryParse(json['visibility'].toString()),
        windSpeed: num.tryParse(json['wind_speed'].toString()),
        windDeg: num.tryParse(json['wind_deg'].toString()),
        windGust: num.tryParse(json['wind_gust'].toString()),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        if (dt != null) 'dt': dt,
        if (sunrise != null) 'sunrise': sunrise,
        if (sunset != null) 'sunset': sunset,
        if (temp != null) 'temp': temp,
        if (feelsLike != null) 'feels_like': feelsLike,
        if (pressure != null) 'pressure': pressure,
        if (humidity != null) 'humidity': humidity,
        if (dewPoint != null) 'dew_point': dewPoint,
        if (uvi != null) 'uvi': uvi,
        if (clouds != null) 'clouds': clouds,
        if (visibility != null) 'visibility': visibility,
        if (windSpeed != null) 'wind_speed': windSpeed,
        if (windDeg != null) 'wind_deg': windDeg,
        if (windGust != null) 'wind_gust': windGust,
        if (weather != null)
          'weather': weather?.map((e) => e.toJson()).toList(),
      };
}
