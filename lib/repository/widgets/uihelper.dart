import 'package:flutter/material.dart';

class UiHelper {
  static CustomImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    required double fontsize,
    String? fontfamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? "regular",
        color: color,
        fontWeight: fontweight,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller, required String hintText}){
    return Container(
      height: 40,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search 'ice-cream'",
          prefixIcon: Image.asset("assets/images/search.png"),
          suffixIcon: Image.asset("assets/images/mic 1.png"),
          border: InputBorder.none,
        )
      )
    );
  }

  static CustomButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0XFF27AF34),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 10, color: Color(0XFF27AF34)),
      ),),
    );
  }
}
