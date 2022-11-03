// To parse this JSON data, do
//
//     final persona = personaFromJson(jsonString);

import 'dart:convert';

Persona personaFromJson(String str) => Persona.fromJson(json.decode(str));

String personaToJson(Persona data) => json.encode(data.toJson());

class Persona {
  Persona({
    this.id,
    this.name,
    this.year,
    this.color,
    this.pantoneValue,
  });

  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id: json["id"],
        name: json["name"],
        year: json["year"],
        color: json["color"],
        pantoneValue: json["pantone_value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "year": year,
        "color": color,
        "pantone_value": pantoneValue,
      };
}
