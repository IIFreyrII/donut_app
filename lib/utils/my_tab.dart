import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key, required this.iconPath});
  //Ruta del archivo
  //C:\Users\Usuario\Documents\GitHub\flutter\flutter\lib\assets\icons\home.png
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          //Borde redondeado
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          //Ruta del archivo
          iconPath,
          color: Colors.grey[600]),
      ),
    );
  }
}
