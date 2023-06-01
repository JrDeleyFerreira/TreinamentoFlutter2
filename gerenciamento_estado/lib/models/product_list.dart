import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducts; // Lista original

  List<Product> get items => [..._items]; // Clone

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners(); // Método de notificação
  }
}
