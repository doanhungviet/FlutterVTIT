import 'package:flutter/material.dart';

class ItemListProvider extends ChangeNotifier{
  List<String> items = [];

  void addItem(String item){
    items. add(item);
    notifyListeners();
  }
  void removeItem(String item){
    items. remove(item);
    notifyListeners();
  }
}