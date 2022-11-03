// To parse this JSON data, do
//
//     final pais = paisFromJson(jsonString);

import 'dart:convert';

import 'package:dart_application_1/classes/regional.dart';
import 'package:dart_application_1/classes/translations.dart';

import 'currency.dart';
import 'flags.dart';
import 'langueages.dart';

Pais paisFromJson(String str) => Pais.fromJson(json.decode(str));

String paisToJson(Pais data) => json.encode(data.toJson());

class Pais {
  String? name;
  List<String>? topLevelDomain;
  String? alpha2Code;
  String? alpha3Code;
  List<String>? callingCodes;
  String? capital;
  List<String>? altSpellings;
  String? subregion;
  String? region;
  int? population;
  List<double>? latlng;
  String? demonym;
  double? area;
  double? gini;
  List<String>? timezones;
  List<String>? borders;
  String? nativeName;
  String? numericCode;
  Flags? flags;
  List<Currency>? currencies;
  List<Language>? languages;
  Translations? translations;
  String? flag;
  List<RegionalBloc>? regionalBlocs;
  String? cioc;
  bool? independent;

  Pais({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.subregion,
    this.region,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.flags,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
    this.independent,
  });

  factory Pais.fromJson(Map<String, dynamic> json) => Pais(
        name: json["name"],
        topLevelDomain: List<String>.from(json["topLevelDomain"].map((x) => x)),
        alpha2Code: json["alpha2Code"],
        alpha3Code: json["alpha3Code"],
        callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
        capital: json["capital"],
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        subregion: json["subregion"],
        region: json["region"],
        population: json["population"],
        latlng: List<double>.from(json["latlng"].map((x) => x)),
        demonym: json["demonym"],
        area: json["area"],
        gini: json["gini"].toDouble(),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        borders: List<String>.from(json["borders"].map((x) => x)),
        nativeName: json["nativeName"],
        numericCode: json["numericCode"],
        flags: Flags.fromJson(json["flags"]),
        currencies: List<Currency>.from(
            json["currencies"].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(
            json["languages"].map((x) => Language.fromJson(x))),
        translations: Translations.fromJson(json["translations"]),
        flag: json["flag"],
        regionalBlocs: List<RegionalBloc>.from(
            json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
        cioc: json["cioc"],
        independent: json["independent"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topLevelDomain": List<dynamic>.from(topLevelDomain!.map((x) => x)),
        "alpha2Code": alpha2Code,
        "alpha3Code": alpha3Code,
        "callingCodes": List<dynamic>.from(callingCodes!.map((x) => x)),
        "capital": capital,
        "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
        "subregion": subregion,
        "region": region,
        "population": population,
        "latlng": List<dynamic>.from(latlng!.map((x) => x)),
        "demonym": demonym,
        "area": area,
        "gini": gini,
        "timezones": List<dynamic>.from(timezones!.map((x) => x)),
        "borders": List<dynamic>.from(borders!.map((x) => x)),
        "nativeName": nativeName,
        "numericCode": numericCode,
        "flags": flags!.toJson(),
        "currencies": List<dynamic>.from(currencies!.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
        "translations": translations!.toJson(),
        "flag": flag,
        "regionalBlocs":
            List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
        "cioc": cioc,
        "independent": independent,
      };
}
