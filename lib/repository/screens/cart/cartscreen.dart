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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    UiHelper.CustomText(text: "Blinkit in", color: Color(0XFF000000), fontsize: 12, fontweight: FontWeight.bold, fontfamily: "bold"),
                ],),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    UiHelper.CustomText(text: "16 minutes", color: Color(0XFF000000), fontsize: 20, fontweight: FontWeight.bold, fontfamily: "bold"),
                  ],
                )
              ],
            )
          ),
        ],)
    );
  }
}