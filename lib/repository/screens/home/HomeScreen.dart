import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 12),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFFFFFFFF),
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
                          color: Color(0XFFFFFFFF),
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
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                        UiHelper.CustomText(
                          text: "- Shivani Singh, Varanasi, Uttar Pradesh",
                          color: Color(0XFFFFFFFF),
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
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 20),
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
          Container(height: 1, width: double.infinity, color: Colors.white),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Row(
              children: [
                UiHelper.CustomImage(img: "sparkle.png"),
                UiHelper.CustomText(
                  text: "Mega Diwali Sale",
                  color: Color(0XFFFFFFFF),
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                  fontfamily: "bold",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
