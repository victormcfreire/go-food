import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'bottom_nav.store.g.dart';

// ignore: library_private_types_in_public_api
class BottomNavStore = _BottomnNavStore with _$BottomNavStore;

abstract class _BottomnNavStore with Store {
  @observable
  int currentIndex = 0;

  @observable
  PageController pageController = PageController();

  @action
  void onTapped(int index) {
    if (index != 2) {
      currentIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }
}
