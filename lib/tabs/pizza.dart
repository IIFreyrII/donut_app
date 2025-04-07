import 'package:donut_app/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAddToCart;

  PizzaTab({super.key, required this.onAddToCart});

  // Lista de donas en venta
  final List pizzasOnSale = [
    ["Champiñon", "150", Colors.blue, "lib/images/images_pizzas/champiñon.png", "Superpizza"],
    ["Hawaiana", "200", Colors.red, "lib/images/images_pizzas/hawaiana.png", "Messina's"],
    ["Pepperoni", "99", Colors.purple, "lib/images/images_pizzas/peperoni.png", "Little Caesar's"],
    ["Queso", "89", Colors.brown, "lib/images/images_pizzas/queso.png", "Little Caesar's"],
    ["Salchicha", "179", Colors.yellow, "lib/images/images_pizzas/salchicha.png", "Superpizza"],
    ["Ternera", "219", Colors.orange, "lib/images/images_pizzas/ternera.png", "Chonitas"],
    ["Vegetariana", "220", Colors.green, "lib/images/images_pizzas/vegetariana.png", "Boston's"],
    ["Yucateca", "179", Colors.pink, "lib/images/images_pizzas/yucateca.png", "Chonitas"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.7
      ),
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
          pizzaStore: pizzasOnSale[index][4],
          onTap: () {
            double price = double.parse(pizzasOnSale[index][1]);
            onAddToCart(price);
          },
        );
      },
    );
  }
}
