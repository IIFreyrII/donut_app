import 'package:donut_app/tabs/burger.dart';
import 'package:donut_app/tabs/donut.dart';
import 'package:donut_app/tabs/pancakes.dart';
import 'package:donut_app/tabs/pizza.dart';
import 'package:donut_app/tabs/smoothie.dart';
import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app/utils/shopping_cart.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      tabName: 'Donuts',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
      tabName: 'Burgers',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      tabName: 'Smoothies',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      tabName: 'Pancakes',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      tabName: 'Pizzas',
    ),
  ];

  int cartItemCount = 0;
  double totalPrice = 0.0;

  void addToCart(double price) {
    setState(() {
      cartItemCount++;
      totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            // Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // TabBar
            TabBar(tabs: myTabs),
            // TabBarView con función
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(onAddToCart: addToCart),
                  BurgerTab(onAddToCart: addToCart),
                  SmoothieTab(onAddToCart: addToCart),
                  PancakesTab(onAddToCart: addToCart),
                  PizzaTab(onAddToCart: addToCart),
                ],
              ),
            ),
            // ShoppingCart con valores actualizados
            ShoppingCart(
              itemCount: cartItemCount,
              totalPrice: totalPrice,
            ),
          ],
        ),
      ),
    );
  }
}
