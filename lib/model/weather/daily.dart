import 'feels_like.dart';
import 'temp.dart';
import 'weather.dart';

class Daily {
  num? dt;
  num? sunrise;
  num? sunset;
  num? moonrise;
  num? moonset;
  num? moonPhase;
  String? summary;
  Temp? temp;
  FeelsLike? feelsLike;
  num? pressure;
  num? humidity;
  num? dewPoint;
  num? windSpeed;
  num? windDeg;
  num? windGust;
  List<Weather>? weather;
  num? clouds;
  num? pop;
  num? rain;
  num? uvi;

  Daily({
    this.dt,
    this.sunrise,
    this.sunset,
    this.moonrise,
    this.moonset,
    this.moonPhase,
    this.summary,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.dewPoint,
    this.windSpeed,
    this.windDeg,
    this.windGust,
    this.weather,
    this.clouds,
    this.pop,
    this.rain,
    this.uvi,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
        dt: num.tryParse(json['dt'].toString()),
        sunrise: num.tryParse(json['sunrise'].toString()),
        sunset: num.tryParse(json['sunset'].toString()),
        moonrise: num.tryParse(json['moonrise'].toString()),
        moonset: num.tryParse(json['moonset'].toString()),
        moonPhase: num.tryParse(json['moon_phase'].toString()),
        summary: json['summary']?.toString(),
        temp: json['temp'] == null
            ? null
            : Temp.fromJson(Map<String, dynamic>.from(json['temp'])),
        feelsLike: json['feels_like'] == null
            ? null
            : FeelsLike.fromJson(Map<String, dynamic>.from(json['feels_like'])),
        pressure: num.tryParse(json['pressure'].toString()),
        humidity: num.tryParse(json['humidity'].toString()),
        dewPoint: num.tryParse(json['dew_point'].toString()),
        windSpeed: num.tryParse(json['wind_speed'].toString()),
        windDeg: num.tryParse(json['wind_deg'].toString()),
        windGust: num.tryParse(json['wind_gust'].toString()),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        clouds: num.tryParse(json['clouds'].toString()),
        pop: num.tryParse(json['pop'].toString()),
        rain: num.tryParse(json['rain'].toString()),
        uvi: num.tryParse(json['uvi'].toString()),
      );

  Map<String, dynamic> toJson() => {
        if (dt != null) 'dt': dt,
        if (sunrise != null) 'sunrise': sunrise,
        if (sunset != null) 'sunset': sunset,
        if (moonrise != null) 'moonrise': moonrise,
        if (moonset != null) 'moonset': moonset,
        if (moonPhase != null) 'moon_phase': moonPhase,
        if (summary != null) 'summary': summary,
        if (temp != null) 'temp': temp?.toJson(),
        if (feelsLike != null) 'feels_like': feelsLike?.toJson(),
        if (pressure != null) 'pressure': pressure,
        if (humidity != null) 'humidity': humidity,
        if (dewPoint != null) 'dew_point': dewPoint,
        if (windSpeed != null) 'wind_speed': windSpeed,
        if (windDeg != null) 'wind_deg': windDeg,
        if (windGust != null) 'wind_gust': windGust,
        if (weather != null)
          'weather': weather?.map((e) => e.toJson()).toList(),
        if (clouds != null) 'clouds': clouds,
        if (pop != null) 'pop': pop,
        if (rain != null) 'rain': rain,
        if (uvi != null) 'uvi': uvi,
      };
}
