import 'package:flutter/material.dart';
import 'package:skinn_shop/global_variables.dart';
import 'package:skinn_shop/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          products.length,
          (index) {
            final product = products[index];
            return ProductCard(
              productName: product['productName'] as String,
              productImage: product['productImage'] as String,
            );
          },
        ),
      ),
    );
  }
}
