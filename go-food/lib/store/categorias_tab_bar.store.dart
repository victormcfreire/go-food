import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'categorias_tab_bar.store.g.dart';

// ignore: library_private_types_in_public_api
class CategoriasTabBarStore = _CategoriasTabBarStore
    with _$CategoriasTabBarStore;

abstract class _CategoriasTabBarStore with Store {
  @observable
  ScrollController controller = ScrollController();

  @action
  void animarTab(dynamic widget) {
    controller.animateTo(
      80.0 * widget.indexSelecionado,
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease,
    );
  }
}
