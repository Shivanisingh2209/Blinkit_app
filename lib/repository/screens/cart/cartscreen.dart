import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontsize: 14,
                          fontweight: FontWeight.bold,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontsize: 20,
                          fontweight: FontWeight.bold,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: "HOME",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        UiHelper.CustomText(
                          text: "- Shivani Singh, Varanasi, Uttar Pradesh",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom: 100,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 30,
                child: UiHelper.CustomTextField(
                  controller: searchController,
                  hintText: '',
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          UiHelper.CustomImage(img: "shopping-cart (1) 1.png"),
          SizedBox(height: 10),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.normal,
            fontsize: 12,
            fontfamily: "regular",
          ),
          UiHelper.CustomText(
            text: "them again easily",
            color: Color(0XFF000000),
            fontweight: FontWeight.normal,
            fontsize: 12,
            fontfamily: "regular",
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "milk-img.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "potato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.CustomButton(() {}),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Stack(
                children: [
                  UiHelper.CustomImage(img: "tomato.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 95, left: 65),
                    child: UiHelper.CustomButton(() {}),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
