import 'package:donut_app/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAddToCart;

  SmoothieTab({super.key, required this.onAddToCart});

  // Lista de donas en venta
  final List smoothiesOnSale = [
    ["Blueberry", "80", Colors.blue, "lib/images/images_smoothies/blueberry.png", "Fruto Verde Juice Bar"],
    ["Chocolate", "70", Colors.red, "lib/images/images_smoothies/chocolate.png", "Boba Shot Mérida"],
    ["Frutos Rojos", "70", Colors.purple, "lib/images/images_smoothies/frutos_rojos.png", "Fruto Verde Juice Bar"],
    ["Mango", "70", Colors.brown, "lib/images/images_smoothies/Mango-Smoothie.png", "Fruto Verde Juice Bar"],
    ["Oreo", "80", Colors.blue, "lib/images/images_smoothies/oreo.png", "Boba Shot Mérida"],
    ["Get Shrekd", "100", Colors.red, "lib/images/images_smoothies/Smoothies_Get-Shrekd.png", "Boba Shot Mérida"],
    ["Hello Yellow", "90", Colors.purple, "lib/images/images_smoothies/Smoothies_Hello-Yellow.png", "Boba Shot Mérida"],
    ["Pink Panther", "90", Colors.brown, "lib/images/images_smoothies/Smoothies_Pink-Panther.png", "Boba Shot Mérida"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: smoothiesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothiePrice: smoothiesOnSale[index][1],
          smoothieColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
          smoothieStore: smoothiesOnSale[index][4],
          onTap: () {
            double price = double.parse(smoothiesOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
