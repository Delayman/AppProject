import 'package:flutter/material.dart';
import 'package:final_project/Product/Game_Item.dart';

class CartManager extends ChangeNotifier {
  List<Game_Item> _items = [];

  List<Game_Item> get items => _items;

  double get totalPrice {
    double total = 0;
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }

  void addToCart(Game_Item item) {
    if (_items.isNotEmpty)
    {
      bool isContains = false;
      for (var product in _items)
      {
        if (product.id == item.id)
        {
          isContains = true;
        }
      }

      if (!isContains)
      {
        _items.add(item);
      }
    }

    else
    {
      _items.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(Game_Item item) {
    _items.remove(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
