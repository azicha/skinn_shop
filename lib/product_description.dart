import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final Map<String, Object> product;
  const ProductDescription({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Column(
        children: [
          Text(
            product['productName'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.network(
              product['productImage'] as String,
              height: 250,
            ),
          ),
          const Spacer(flex: 2),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$${product['price']}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                // SizedBox(
                //   height: 50,
                //   child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: (product['sizes'] as List<int>).length,
                //       itemBuilder: (context, index) {
                //         final size =
                //             (product['sizes'] as List<int>)[index];

                //         return Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: GestureDetector(
                //             child: Chip(
                //               label: Text(size.toString()),
                //             ),
                //           ),
                //         );
                //       }),
                // ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        minimumSize: const Size(double.infinity, 50)),
                    child: const Text(
                      'Add To Cart',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
