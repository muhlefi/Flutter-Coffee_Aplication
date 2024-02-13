import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [

          //heading
          Text(
            'Your Cart',
            style: TextStyle(fontSize: 20),
          ),

          //list of cart
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            // get individual cart items
          }),)


        ]
        ),
      ),
    );
  }
}
