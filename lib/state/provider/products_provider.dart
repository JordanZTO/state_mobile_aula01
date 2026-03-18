import 'package:flutter/material.dart';
import '../../model/product.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> _products = [
    Product(name: 'Notebook', price: 3500.00),
    Product(name: 'Mouse', price: 120.00),
    Product(name: 'Teclado', price: 250.00),
    Product(name: 'Monitor', price: 900.00),
  ];

  List<Product> get products => _products;

  void toggleFavorite(int index) {
    if (index >= 0 && index < _products.length) {
      _products[index].favorite = !_products[index].favorite;
      notifyListeners();
    }
  }

  int get favoriteCount => _products.where((p) => p.favorite).length;
}
