import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {
      "img": "grocery.png",
      "text": "Vegetable & \nFruits",
    },
    {
      "img": "atta.png",
      "text": "Atta, Dal & \nRice",
    },
    {
      "img": "oil.png",
      "text": "Oil, Ghee & \nMasala",
    },
    {
      "img": "bread.png",
      "text": "Dairy, bread & \nMilk",
    },
    {
      "img": "bourbon.png",
      "text": "Biscuits & \nBakery",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
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
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(height: 20),
              UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 20),
          ListView.builder(itemBuilder: (context,index){
            return Container(
              height: 78,
              width: 71,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0XFFD9EBEB)
              ),
                child: UiHelper.CustomImage(img: grocerykitchen[index]["img"].toString()),
            );
          })
        ],
      ),
    );
  }
}
