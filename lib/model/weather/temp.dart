class Temp {
  num? day;
  num? min;
  num? max;
  num? night;
  num? eve;
  num? morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory Temp.fromJson(Map<String, dynamic> json) => Temp(
        day: num.tryParse(json['day'].toString()),
        min: num.tryParse(json['min'].toString()),
        max: num.tryParse(json['max'].toString()),
        night: num.tryParse(json['night'].toString()),
        eve: num.tryParse(json['eve'].toString()),
        morn: num.tryParse(json['morn'].toString()),
      );

  Map<String, dynamic> toJson() => {
        if (day != null) 'day': day,
        if (min != null) 'min': min,
        if (max != null) 'max': max,
        if (night != null) 'night': night,
        if (eve != null) 'eve': eve,
        if (morn != null) 'morn': morn,
      };
}
