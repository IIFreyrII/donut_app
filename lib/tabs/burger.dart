import 'package:donut_app/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAddToCart;

  BurgerTab({super.key, required this.onAddToCart});

  // Lista de hamburguesas en venta
  final List burgersOnSale = [
    ["Big Bacon", "230", Colors.pink, "lib/images/images_burgers/big_bacon_wendys.png", "Wendy's"],
    ["Big Mac", "220", Colors.cyan, "lib/images/images_burgers/Big_Mac.png", "Wendy's"],
    ["Crispy Bacon", "155", Colors.purple, "lib/images/images_burgers/crispy_bacon.png", "Angry Angus"],
    ["Grill Burger", "160", Colors. yellow, "lib/images/images_burgers/grill_burger.png", "Angry Angus"],
    ["Mc Chicken", "140", Colors.blue, "lib/images/images_burgers/mcpollo.png", "Carl's Jr"],
    ["Mc Bacon", "150", Colors.red, "lib/images/images_burgers/mctocino.png", "Carl's Jr"],
    ["Whopper", "50", Colors.green, "lib/images/images_burgers/whopper.png", "Burger King"],
    ["Whopper Jr", "30", Colors.brown, "lib/images/images_burgers/WhopperJR-Doble.png", "Burger King"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
          burgerStore: burgersOnSale[index][4],
          onTap: () {
            double price = double.parse(burgersOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
