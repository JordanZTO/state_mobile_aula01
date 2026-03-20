import 'package:flutter/material.dart';
import '../../model/product.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> _products = [
    Product(
      name: 'Notebook',
      price: 3500.00,
      description: 'Notebook de alta performance com processador i7, 16GB de RAM e SSD de 512GB',
      image: 'https://via.placeholder.com/300x300?text=Notebook',
    ),
    Product(
      name: 'Mouse',
      price: 120.00,
      description: 'Mouse sem fio com excelente precisão e bateria durável',
      image: 'https://via.placeholder.com/300x300?text=Mouse',
    ),
    Product(
      name: 'Teclado',
      price: 250.00,
      description: 'Teclado mecânico RGB com switches de alta qualidade',
      image: 'https://via.placeholder.com/300x300?text=Teclado',
    ),
    Product(
      name: 'Monitor',
      price: 900.00,
      description: 'Monitor 4K de 27 polegadas com taxa de atualização de 60Hz',
      image: 'https://via.placeholder.com/300x300?text=Monitor',
    ),
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
