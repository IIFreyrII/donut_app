import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //Ruta del archivo
  //C:\Users\Usuario\Documents\GitHub\flutter\flutter\lib\assets\icons\home.png
  final String iconPath;
  final String tabName; // Nuevo parámetro para el texto

  const MyTab({
    super.key, 
    required this.iconPath,
    required this.tabName, // Texto requerido
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70, // Aumentamos la altura para acomodar el texto
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              color: Colors.grey[600],
              width: 24, // Tamaño consistente para los iconos
              height: 24,
            ),
            const SizedBox(height: 4), // Espacio entre icono y texto
            Text(
              tabName,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600], // Mismo color que los iconos
              ),
            ),
          ],
        ),
      ),
    );
  }
}