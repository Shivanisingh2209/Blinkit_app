import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
          SizedBox(height: 30),
          Container(
            height: 160,
            width: double.infinity,
            color: Color(0XFFF7CB45),
            child: Column(
              children: [
                Row(
                  children: [
                  UiHelper.CustomText(text: "Blinkit in", color: Color(0XFF000000), fontsize: 12, fontweight: FontWeight.bold, fontfamily: "bold"),
                ],),
              ],
            )
          ),
        ],)
    );
  }
}