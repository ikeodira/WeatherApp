class FeelsLike {
  num? day;
  num? night;
  num? eve;
  num? morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  factory FeelsLike.fromJson(Map<String, dynamic> json) => FeelsLike(
        day: num.tryParse(json['day'].toString()),
        night: num.tryParse(json['night'].toString()),
        eve: num.tryParse(json['eve'].toString()),
        morn: num.tryParse(json['morn'].toString()),
      );

  Map<String, dynamic> toJson() => {
        if (day != null) 'day': day,
        if (night != null) 'night': night,
        if (eve != null) 'eve': eve,
        if (morn != null) 'morn': morn,
      };
}
