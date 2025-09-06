import 'package:blinkit_app/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "vegies.png", "text": "Vegetable & \n Fruits"},
    {"img": "atta.png", "text": "Atta, Dal & \n Rice"},
    {"img": "oil.png", "text": "Oil, Ghee & \n Masala"},
    {"img": "bread.png", "text": "Dairy, bread & \n Milk"},
    {"img": "bourbon.png", "text": "Biscuits & \n Bakery"},
  ];

  var secondgrocerykitchen = [
    {"img": "cereals.png", "text": "Dry Fruits & \n Cereals"},
    {"img": "appliances.png", "text": "Kitchen & \n Appliances"},
    {"img": "tea.png", "text": "Tea & \n Coffees"},
    {"img": "icecream.png", "text": "Ice Creams & \n much more"},
    {"img": "maggie.png", "text": "Noodles & \n Packet Food"},
  ];

  var snacksdrinks = [
    {"img": "cereals.png", "text": "Dry Fruits & \n Cereals"},
    {"img": "appliances.png", "text": "Kitchen & \n Appliances"},
    {"img": "tea.png", "text": "Tea & \n Coffees"},
    {"img": "icecream.png", "text": "Ice Creams & \n much more"},
    {"img": "maggie.png", "text": "Noodles & \n Packet Food"},
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: grocerykitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: secondgrocerykitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: secondgrocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: secondgrocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20,),
              UiHelper.CustomText(text: "Snacks & Drinks", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14, fontfamily: "bold"),
            ],
          )
        ],
      ),
    );
  }
}
