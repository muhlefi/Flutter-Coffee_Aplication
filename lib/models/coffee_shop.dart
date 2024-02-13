import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    // boba
    Coffee(
        name: 'Kopi Item', 
        price: "4.10", 
        imagePath: "lib/images/coffee.png"),

    // coffee
      Coffee(name: 'Boba Enak', 
        price: "100.000", 
        imagePath: "lib/images/boba.png"),

    // milkshake
    Coffee(
        name: 'Cucuw Milkshake',
        price: "9.90", 
        imagePath: "lib/images/boba.png"),

    // coffee
    Coffee(
        name: 'Cucuw Milkshake',
        price: "9.90",
        imagePath: "lib/images/coffee.png"),
  ];

  // user cart
  List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item for cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
