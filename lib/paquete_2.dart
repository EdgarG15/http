import 'dart:convert';

import 'package:dart_application_1/classes/pais.dart';
import 'package:http/http.dart' as http;

void getDatosMexico() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/mex');
  http.get(url).then((res) {
    final resPais = paisFromJson(res.body);
    print('=================================');
    print('Pais: ${resPais.name}');
    print('Poblacion ${resPais.population}');
    print('Fronteras: ${resPais.borders}');
    print('Lenguaje: ${resPais.languages![0].nativeName}');
    print('Latitud: ${resPais.latlng![0]}');
    print('Longitud: ${resPais.latlng![1]}');
    print('Moneda: ${resPais.currencies![0].name}');
    print('Bandera: ${resPais.flag}');
    print('=================================');
  });
}
