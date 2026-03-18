import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as provider;

import 'presentation/pages/home_page.dart';
import 'state/provider/products_provider.dart';

void main() {
  runApp(
    provider.ChangeNotifierProvider(
      create: (_) => ProductsProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Patterns',
      home: const HomePage(),
    );
  }
}