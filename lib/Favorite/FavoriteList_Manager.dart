import 'package:flutter/material.dart';
import 'package:final_project/Product/Game_Item.dart';

class FavoriteListManager extends ChangeNotifier {
  List<Game_Item> _favItems = [];

  List<Game_Item> get favItems => _favItems;

  void addToFav(Game_Item item) {
    if (_favItems.isNotEmpty) {
      bool isContains = false;
      for (var product in _favItems) {
        if (product.id == item.id) {
          isContains = true;
          removeFromFav(product);
        }
      }

      if (!isContains) {
        _favItems.add(item);
      }
    } else {
      _favItems.add(item);
    }
    //_items.add(item);
    notifyListeners();
  }

  void removeFromFav(Game_Item item) {
    _favItems.remove(item);
    notifyListeners();
  }
}
