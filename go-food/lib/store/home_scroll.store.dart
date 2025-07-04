import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:go_food/models/produto_grupo_model.dart';
import 'package:go_food/pages/home.dart';
import 'package:go_food/utils/consts.dart';
import 'package:go_food/utils/getters.dart';

part 'home_scroll.store.g.dart';

// ignore: library_private_types_in_public_api
class HomeScrollStore = _HomeScrollStore with _$HomeScrollStore;

abstract class _HomeScrollStore with Store {
  @observable
  ScrollController scrollController = ScrollController();

  @observable
  late List<ProdutoGrupo> restauranteGruposProdutos = [];

  List<double> breakPoints = [];

  @observable
  int indexCategoriaSelecionada = 0;

  List<GlobalKey> getCategoriasKeys() {
    List<GlobalKey> categoriasKeys =
        geraCategoriasKeys(restauranteGruposProdutos);
    return categoriasKeys;
  }

  @action
  void atualizaIndexCategoria(double offset) {
    for (var i = 0; i < restauranteGruposProdutos.length; i++) {
      if (i == 0) {
        if ((offset < breakPoints.first) & (indexCategoriaSelecionada != 0)) {
          indexCategoriaSelecionada = 0;
        }
      } else if ((breakPoints[i - 1] <= offset) & (offset < breakPoints[i])) {
        if (indexCategoriaSelecionada != i) {
          indexCategoriaSelecionada = i;
        }
      }
    }
  }

  @action
  Future scrollTo(int index) async {
    if (indexCategoriaSelecionada != index) {
      final categoriaAlvo = keys[index].currentContext!;
      await Scrollable.ensureVisible(categoriaAlvo,
          duration: const Duration(milliseconds: 800));

      indexCategoriaSelecionada = index;
    }
  }

  @action
  void criarBreakPoints() {
    double primeiroBreakPoint = restauranteBarAltura +
        50 +
        (alturaCategoriaExpandida *
            restauranteGruposProdutos[0].produtos.length);
    breakPoints.add(primeiroBreakPoint);

    for (var i = 0; i < restauranteGruposProdutos.length; i++) {
      double breakPoint = breakPoints.last +
          100 +
          (alturaCategoriaExpandida *
              restauranteGruposProdutos[i].produtos.length);
      breakPoints.add(breakPoint);
    }
  }
}
