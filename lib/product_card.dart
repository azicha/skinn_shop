import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final String productImage;
  const ProductCard({
    super.key,
    required this.productName,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromARGB(60, 144, 141, 141),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(productName),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    productImage,
                    height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
