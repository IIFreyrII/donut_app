import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAddToCart;

  DonutTab({super.key, required this.onAddToCart});

  // Lista de donas en venta
  final List donutsOnSale = [
    ["Chocolate", "72", Colors.brown, "lib/images/images_donuts/chocolate.png", "Krispy Kreme"],
    ["Fresa", "75", Colors.pink, "lib/images/images_donuts/strawberry.png", "Krispy Kreme"],
    ["Azucar", "70", Colors.green, "lib/images/images_donuts/azucar.png", "Krispy Kreme"],
    ["Chispas", "78", Colors.yellow, "lib/images/images_donuts/chispas.png", "Krispy Kreme"],
    ["Chruch", "80", Colors.cyan, "lib/images/images_donuts/chruch.png", "Krispy Kreme"],
    ["Glaseada", "75", Colors.grey, "lib/images/images_donuts/glaseada.png", "Krispy Kreme"],
    ["Ice cream", "90", Colors.red, "lib/images/images_donuts/ice_cream.png", "Krispy Kreme"],
    ["Rellena", "82", Colors.orange, "lib/images/images_donuts/rellena.png", "Krispy Kreme"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7,
      ),
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
          donutStore: donutsOnSale[index][4],
          onTap: () {
            double price = double.parse(donutsOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
