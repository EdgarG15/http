// To parse this JSON data, do
//
//     final flags = flagsFromJson(jsonString);

import 'dart:convert';

Flags flagsFromJson(String str) => Flags.fromJson(json.decode(str));

String flagsToJson(Flags data) => json.encode(data.toJson());

class Flags {
  Flags({
    this.svg,
    this.png,
  });

  String? svg;
  String? png;

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        svg: json["svg"],
        png: json["png"],
      );

  Map<String, dynamic> toJson() => {
        "svg": svg,
        "png": png,
      };
}
