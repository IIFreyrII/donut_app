import 'package:flutter/material.dart';
import 'package:donut_app/models/donut_model.dart';

class CartProvider extends ChangeNotifier {
  final List<DonutProduct> _cartItems = [];
  double _totalPrice = 0.0;

  List<DonutProduct> get cartItems => _cartItems;
  double get totalPrice => _totalPrice;
  int get itemCount => _cartItems.length;

  void addToCart(DonutProduct product) {
    _cartItems.add(product);
    _totalPrice += product.price;
    notifyListeners();
  }

  void removeFromCart(DonutProduct product) {
    _cartItems.remove(product);
    _totalPrice -= product.price;
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    _totalPrice = 0.0;
    notifyListeners();
  }
}