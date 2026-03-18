import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../state/provider/products_provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = context.watch<ProductsProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider - Produtos"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Text(
              "Favoritos: ${productsProvider.favoriteCount}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productsProvider.products.length,
              itemBuilder: (context, index) {
                final product = productsProvider.products[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(product.name),
                    subtitle: Text('R\$ ${product.price.toStringAsFixed(2)}'),
                    trailing: IconButton(
                      icon: Icon(
                        product.favorite ? Icons.star : Icons.star_border,
                        color: product.favorite ? Colors.amber : Colors.grey,
                        size: 28,
                      ),
                      onPressed: () {
                        productsProvider.toggleFavorite(index);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
