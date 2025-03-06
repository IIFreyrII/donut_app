import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //Prepa 1:
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //Número de columnas
            crossAxisCount: 2),
        //Cuántos elementos
        itemCount: 2,
        padding: const EdgeInsets.all(12),
        //Qué elemmento se construirá
        itemBuilder: (context, index) {
          return;
        });
  }
}
