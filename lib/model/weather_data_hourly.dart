// class Hourly {
//   num? dt;
//   num? temp;
//   num? feelsLike;
//   num? pressure;
//   num? humidity;
//   num? dewPoint;
//   num? uvi;
//   num? clouds;
//   num? visibility;
//   num? windSpeed;
//   num? windDeg;
//   num? windGust;
//   List<Weather>? weather;
//   num? pop;
//   Rain? rain;

//   Hourly({
//     this.dt,
//     this.temp,
//     this.feelsLike,
//     this.pressure,
//     this.humidity,
//     this.dewPoint,
//     this.uvi,
//     this.clouds,
//     this.visibility,
//     this.windSpeed,
//     this.windDeg,
//     this.windGust,
//     this.weather,
//     this.pop,
//     this.rain,
//   });

//   factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
//         dt: num.tryParse(json['dt'].toString()),
//         temp: num.tryParse(json['temp'].toString()),
//         feelsLike: num.tryParse(json['feels_like'].toString()),
//         pressure: num.tryParse(json['pressure'].toString()),
//         humidity: num.tryParse(json['humidity'].toString()),
//         dewPoint: num.tryParse(json['dew_point'].toString()),
//         uvi: num.tryParse(json['uvi'].toString()),
//         clouds: num.tryParse(json['clouds'].toString()),
//         visibility: num.tryParse(json['visibility'].toString()),
//         windSpeed: num.tryParse(json['wind_speed'].toString()),
//         windDeg: num.tryParse(json['wind_deg'].toString()),
//         windGust: num.tryParse(json['wind_gust'].toString()),
//         weather: (json['weather'] as List<dynamic>?)
//             ?.map((e) => Weather.fromJson(Map<String, dynamic>.from(e)))
//             .toList(),
//         pop: num.tryParse(json['pop'].toString()),
//         rain: json['rain'] == null
//             ? null
//             : Rain.fromJson(Map<String, dynamic>.from(json['rain'])),
//       );

//   Map<String, dynamic> toJson() => {
//         if (dt != null) 'dt': dt,
//         if (temp != null) 'temp': temp,
//         if (feelsLike != null) 'feels_like': feelsLike,
//         if (pressure != null) 'pressure': pressure,
//         if (humidity != null) 'humidity': humidity,
//         if (dewPoint != null) 'dew_point': dewPoint,
//         if (uvi != null) 'uvi': uvi,
//         if (clouds != null) 'clouds': clouds,
//         if (visibility != null) 'visibility': visibility,
//         if (windSpeed != null) 'wind_speed': windSpeed,
//         if (windDeg != null) 'wind_deg': windDeg,
//         if (windGust != null) 'wind_gust': windGust,
//         if (weather != null)
//           'weather': weather?.map((e) => e.toJson()).toList(),
//         if (pop != null) 'pop': pop,
//         if (rain != null) 'rain': rain?.toJson(),
//       };
// }
