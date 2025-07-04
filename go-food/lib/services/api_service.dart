import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:go_food/models/restaurante_model.dart';
import 'package:go_food/services/constants.dart';

class ApiService {
  Future<Restaurante> getRestaurante(String id) async {
    var url = Uri.parse(
        '${ApiConstants.baseUrl}${ApiConstants.restaurantesEndpoint}/$id');
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var response = jsonDecode(res.body);
      if (id.isEmpty) {
        response = response[0];
      }
      Restaurante restaurante = Restaurante.fromJson(response);
      return restaurante;
    } else {
      throw Exception('Não foi possível carregar o restaurante');
    }
  }
}
