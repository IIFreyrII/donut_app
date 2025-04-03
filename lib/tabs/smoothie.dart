import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor,  donutPrice, donutColor, imageName, donutStore ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png", "Krispy Kreme"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png", "UwU Donuts"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png", "Cantarella Donuts"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png", "Dunkin Donuts"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Prepa 1:
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2,
            //Proporción entre ancho y alto
            childAspectRatio: 1 / 1.65),
        //Cuántos elementos
        itemCount: 4,
        padding: const EdgeInsets.all(12),
        //Qué elemmento se construirá
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutColor: donutsOnSale[index][2],
              imageName: donutsOnSale[index][3],
              donutStore: donutsOnSale[index][4]);
      }
    );
  }
}