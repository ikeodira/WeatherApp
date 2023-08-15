import 'current.dart';
import 'daily.dart';
import 'hourly.dart';

class Weather {
  num? lat;
  num? lon;
  String? timezone;
  num? timezoneOffset;
  Current? current;
  List<Hourly>? hourly;
  List<Daily>? daily;

  Weather({
    this.lat,
    this.lon,
    this.timezone,
    this.timezoneOffset,
    this.current,
    this.hourly,
    this.daily,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        lat: num.tryParse(json['lat'].toString()),
        lon: num.tryParse(json['lon'].toString()),
        timezone: json['timezone']?.toString(),
        timezoneOffset: num.tryParse(json['timezone_offset'].toString()),
        current: json['current'] == null
            ? null
            : Current.fromJson(Map<String, dynamic>.from(json['current'])),
        hourly: (json['hourly'] as List<dynamic>?)
            ?.map((e) => Hourly.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
        daily: (json['daily'] as List<dynamic>?)
            ?.map((e) => Daily.fromJson(Map<String, dynamic>.from(e)))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        if (lat != null) 'lat': lat,
        if (lon != null) 'lon': lon,
        if (timezone != null) 'timezone': timezone,
        if (timezoneOffset != null) 'timezone_offset': timezoneOffset,
        if (current != null) 'current': current?.toJson(),
        if (hourly != null) 'hourly': hourly?.map((e) => e.toJson()).toList(),
        if (daily != null) 'daily': daily?.map((e) => e.toJson()).toList(),
      };
}
