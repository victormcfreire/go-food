// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedidos.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PedidosStore on _PedidosStore, Store {
  late final _$pedidosAtom =
      Atom(name: '_PedidosStore.pedidos', context: context);

  @override
  ObservableList<Pedido> get pedidos {
    _$pedidosAtom.reportRead();
    return super.pedidos;
  }

  @override
  set pedidos(ObservableList<Pedido> value) {
    _$pedidosAtom.reportWrite(value, super.pedidos, () {
      super.pedidos = value;
    });
  }

  late final _$adicionaPedidoAsyncAction =
      AsyncAction('_PedidosStore.adicionaPedido', context: context);

  @override
  Future<dynamic> adicionaPedido(Pedido element, BuildContext context) {
    return _$adicionaPedidoAsyncAction
        .run(() => super.adicionaPedido(element, context));
  }

  @override
  String toString() {
    return '''
pedidos: ${pedidos}
    ''';
  }
}
