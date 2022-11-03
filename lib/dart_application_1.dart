import 'dart:convert';
import 'package:dart_application_1/classes/reqres_respuesta.dart';
import 'package:http/http.dart' as http;

void getReqRes() {
  final url = Uri.parse('https://reqres.in/api/user?page=2');
  http.get(url).then((res) {
    final resReqRes = reqResFromJson(res.body);

    print('per_page: ${resReqRes.perPage}');
    print('page ${resReqRes.page}');
    print('id del tercer elemento ${resReqRes.data![2].id}');
  });
}
