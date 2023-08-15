class Rain {
  num? onehour;

  Rain({this.onehour});

  factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        onehour: num.tryParse(json['1h'].toString()),
      );

  Map<String, dynamic> toJson() => {
        if (onehour != null) '1h': onehour,
      };
}
