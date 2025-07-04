// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BottomNavStore on _BottomnNavStore, Store {
  late final _$currentIndexAtom =
      Atom(name: '_BottomnNavStore.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$pageControllerAtom =
      Atom(name: '_BottomnNavStore.pageController', context: context);

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  late final _$_BottomnNavStoreActionController =
      ActionController(name: '_BottomnNavStore', context: context);

  @override
  void onTapped(int index) {
    final _$actionInfo = _$_BottomnNavStoreActionController.startAction(
        name: '_BottomnNavStore.onTapped');
    try {
      return super.onTapped(index);
    } finally {
      _$_BottomnNavStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
pageController: ${pageController}
    ''';
  }
}
