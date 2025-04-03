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
      tabName: 'Donuts', // Añadir texto
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          //left menu icon
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Column(
          children: [
            //1. Texto principal (MainText)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                        //Tamaño de letra
                        fontSize: 32,
                        //Negritas
                        fontWeight: FontWeight.bold,
                        //Subrayado
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            //2. Pestañas (TabBar)
            TabBar(tabs: myTabs),
            //3. Contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab(),
              ]),
            ),
            //4. Carrito (Cart)
            ShoppingCart()
          ],
        ),
      ),
    );
  }
}
