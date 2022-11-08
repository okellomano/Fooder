import 'package:flutter/material.dart';

class TabManager extends ChangeNotifier {
  int seectedTab = 0;

  void goToTab(index) {
    seectedTab = index;
    notifyListeners();
  }

  void goToRecipes() {
    seectedTab = 1;
    notifyListeners();
  }
}
