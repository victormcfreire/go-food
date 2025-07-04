import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:go_food/models/item_pedido_model.dart';
import 'package:go_food/models/pedido_model.dart';
import 'package:go_food/services/constants.dart';

class PedidosService {
  Future<List<Pedido>> getPedidos() async {
    var url =
        Uri.parse('${ApiConstants.baseUrl}${ApiConstants.pedidosEndpoint}');
    var res = await http.get(url);
    if (res.statusCode == 200) {
      List<Pedido> pedidos = pedidoFromJson(res.body);
      return pedidos;
    } else {
      throw Exception('Não foi possível carregar o pedido');
    }
  }

  Future<Pedido> getPedidoById(int id) async {
    var url =
        Uri.parse('${ApiConstants.baseUrl}${ApiConstants.pedidosEndpoint}/$id');
    var res = await http.get(url);
    if (res.statusCode == 200) {
      Pedido pedido = Pedido.fromJson(jsonDecode(res.body));
      return pedido;
    } else {
      throw Exception('Não foi possível carregar o pedido: $id');
    }
  }

  Future<Pedido> createPedido(Pedido pedido) async {
    try {
      final url =
          Uri.parse('${ApiConstants.baseUrl}${ApiConstants.pedidosEndpoint}');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'mesa': pedido.mesa,
          'total': pedido.total,
          'status': pedido.status,
          'itensPedido': pedido.itensPedido,
        }),
      );
      if (response.statusCode >= 200 && response.statusCode <= 400) {
        return Pedido.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Não foi possível confirmar o pedido');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Pedido> updatePedido(int pedidoId, String mesa, double total,
      String status, List<ItemPedido> itensPedido) async {
    final url = Uri.parse(
        "${ApiConstants.baseUrl}${ApiConstants.pedidosEndpoint}/$pedidoId");
    final response = await http.put(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'mesa': mesa,
        'total': total,
        'status': status,
        'itensPedido': itensPedido,
      }),
    );

    if (response.statusCode == 200) {
      return Pedido.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Não foi possível atualizar o pedido');
    }
  }

  Future<Pedido> deletePedido(int pedidoId) async {
    final url = Uri.parse(
        "${ApiConstants.baseUrl}${ApiConstants.pedidosEndpoint}/$pedidoId");
    final response = await http.delete(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return Pedido.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Não foi possível deletar o pedido: $pedidoId');
    }
  }
}
