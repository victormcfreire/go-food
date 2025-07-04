// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_scroll.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeScrollStore on _HomeScrollStore, Store {
  late final _$scrollControllerAtom =
      Atom(name: '_HomeScrollStore.scrollController', context: context);

  @override
  ScrollController get scrollController {
    _$scrollControllerAtom.reportRead();
    return super.scrollController;
  }

  @override
  set scrollController(ScrollController value) {
    _$scrollControllerAtom.reportWrite(value, super.scrollController, () {
      super.scrollController = value;
    });
  }

  late final _$restauranteGruposProdutosAtom = Atom(
      name: '_HomeScrollStore.restauranteGruposProdutos', context: context);

  @override
  List<ProdutoGrupo> get restauranteGruposProdutos {
    _$restauranteGruposProdutosAtom.reportRead();
    return super.restauranteGruposProdutos;
  }

  @override
  set restauranteGruposProdutos(List<ProdutoGrupo> value) {
    _$restauranteGruposProdutosAtom
        .reportWrite(value, super.restauranteGruposProdutos, () {
      super.restauranteGruposProdutos = value;
    });
  }

  late final _$indexCategoriaSelecionadaAtom = Atom(
      name: '_HomeScrollStore.indexCategoriaSelecionada', context: context);

  @override
  int get indexCategoriaSelecionada {
    _$indexCategoriaSelecionadaAtom.reportRead();
    return super.indexCategoriaSelecionada;
  }

  @override
  set indexCategoriaSelecionada(int value) {
    _$indexCategoriaSelecionadaAtom
        .reportWrite(value, super.indexCategoriaSelecionada, () {
      super.indexCategoriaSelecionada = value;
    });
  }

  late final _$scrollToAsyncAction =
      AsyncAction('_HomeScrollStore.scrollTo', context: context);

  @override
  Future<dynamic> scrollTo(int index) {
    return _$scrollToAsyncAction.run(() => super.scrollTo(index));
  }

  late final _$_HomeScrollStoreActionController =
      ActionController(name: '_HomeScrollStore', context: context);

  @override
  void atualizaIndexCategoria(double offset) {
    final _$actionInfo = _$_HomeScrollStoreActionController.startAction(
        name: '_HomeScrollStore.atualizaIndexCategoria');
    try {
      return super.atualizaIndexCategoria(offset);
    } finally {
      _$_HomeScrollStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void criarBreakPoints() {
    final _$actionInfo = _$_HomeScrollStoreActionController.startAction(
        name: '_HomeScrollStore.criarBreakPoints');
    try {
      return super.criarBreakPoints();
    } finally {
      _$_HomeScrollStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scrollController: ${scrollController},
restauranteGruposProdutos: ${restauranteGruposProdutos},
indexCategoriaSelecionada: ${indexCategoriaSelecionada}
    ''';
  }
}
