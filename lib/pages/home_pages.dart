import 'package:coffee_application/components/bottom_navbar.dart';
import 'package:coffee_application/const.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'shop_page.dart';
import 'profile_page.dart'; // Import ProfilePage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages
  final List<Widget> _pages = [
    // Shop page
    ShopPage(),

    // Cart page
    CartPage(),

    // Profile page
    ProfilePage(), // Add ProfilePage here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
