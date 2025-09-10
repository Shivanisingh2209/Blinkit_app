import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 12),
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
          SizedBox(height: 30),
          UiHelper.CustomText(
            text: "Print Store",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 32,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontweight: FontWeight.bold,
            fontsize: 14,
            fontfamily: "bold",
          ),
          SizedBox(height: 40),
          Container(
            height: 183,
            width: 391,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    UiHelper.CustomText(
                      text: "Documents",
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
                    UiHelper.CustomImage(img: "✦.png"),
                    UiHelper.CustomText(
                      text: " Price starting at rs 3/page",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: "regular",
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    SizedBox(width: 20),
                    UiHelper.CustomImage(img: "✦.png"),
                    UiHelper.CustomText(
                      text: " Paper quality: 70 GSM",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: "regular",
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    SizedBox(width: 20),
                    UiHelper.CustomImage(img: "✦.png"),
                    UiHelper.CustomText(
                      text: " Single side prints",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: "regular",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
