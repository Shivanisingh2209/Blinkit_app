import 'package:blinkit_app/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_app/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_app/repository/screens/home/HomeScreen.dart';
import 'package:blinkit_app/repository/screens/print/printscreen.dart';
import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: UiHelper.CustomImage(img: "home 1.png"), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
      ]),
    );
  }
}