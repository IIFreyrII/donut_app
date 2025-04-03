import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:donut_app/providers/cart_provider.dart';
import 'package:donut_app/models/donut_model.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final Color donutColor;
  final String imageName;
  final String donutStore;

  const DonutTile({
    super.key, 
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required this.donutStore,
  });

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // Imagen del donut
          Expanded(
            child: Image.asset(
              imageName,
              fit: BoxFit.contain,
            ),
          ),
          
          // Información del producto
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donutFlavor,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  donutStore,
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$$donutPrice',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Botón de añadir
                    IconButton(
                      icon: const Icon(Icons.add_circle, color: Colors.pink),
                      onPressed: () {
                        final product = DonutProduct(
                          id: '${donutFlavor}_${DateTime.now().millisecondsSinceEpoch}',
                          name: donutFlavor,
                          price: double.parse(donutPrice),
                          color: donutColor,
                          imageUrl: imageName,
                          store: donutStore,
                        );
                        cartProvider.addToCart(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('${donutFlavor} added to cart!'),
                            duration: const Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}