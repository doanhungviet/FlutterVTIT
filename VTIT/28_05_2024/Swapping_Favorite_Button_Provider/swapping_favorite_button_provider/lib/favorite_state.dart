import 'package:flutter/cupertino.dart';

class FavoriteState extends ChangeNotifier{
  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;
  void toggleFavorite(){
    _isFavorite = !_isFavorite;
    notifyListeners();
  }
}