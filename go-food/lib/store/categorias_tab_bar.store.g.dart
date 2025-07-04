// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categorias_tab_bar.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoriasTabBarStore on _CategoriasTabBarStore, Store {
  late final _$controllerAtom =
      Atom(name: '_CategoriasTabBarStore.controller', context: context);

  @override
  ScrollController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(ScrollController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$_CategoriasTabBarStoreActionController =
      ActionController(name: '_CategoriasTabBarStore', context: context);

  @override
  void animarTab(dynamic widget) {
    final _$actionInfo = _$_CategoriasTabBarStoreActionController.startAction(
        name: '_CategoriasTabBarStore.animarTab');
    try {
      return super.animarTab(widget);
    } finally {
      _$_CategoriasTabBarStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
controller: ${controller}
    ''';
  }
}
