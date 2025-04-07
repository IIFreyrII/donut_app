import 'package:donut_app/utils/pancake_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double) onAddToCart;

  PancakesTab({super.key, required this.onAddToCart});

  // Lista de donas en venta
  final List pancakesOnSale = [
    ["Blue Berry", "130", Colors.blue, "lib/images/images_pancakes/blueberry.png", "La Panquequería"],
    ["Chocolate", "200", Colors.brown, "lib/images/images_pancakes/chocolate.png", "Nut Café"],
    ["Clásicos", "120", Colors.grey, "lib/images/images_pancakes/clasicos.png", "Brunch & Munch"],
    ["Fresa", "180", Colors.pink, "lib/images/images_pancakes/fresa.png", "Brunch & Munch"],
    ["Integrales", "150", Colors.green, "lib/images/images_pancakes/integrales.png", "Nut Café"],
    ["Oreo", "119", Colors.red, "lib/images/images_pancakes/oreo.png", "La Panquequería"],
    ["Relleno", "160", Colors.purple, "lib/images/images_pancakes/Relleno.png", "Brunch & Munch"],
    ["Yogurt", "179", Colors.brown, "lib/images/images_pancakes/yogurt.png", "Brunch & Munch"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
          pancakeStore: pancakesOnSale[index][4],
          onTap: () {
            double price = double.parse(pancakesOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
