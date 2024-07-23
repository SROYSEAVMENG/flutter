import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_project/home/colors.dart';
import 'package:my_project/widgets/big_text.dart';
import 'package:my_project/widgets/small_text.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Bangladesh",
                      color: appColors.mainColor,
                      size: 30,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "Narsingdi",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                    child: Container(
                  width: 45,
                  height: 45,
                  child: Icon(Icons.search, color: Colors.white),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: appColors.mainColor,
                  ),
                )),
              ],
            ),
          ),
        ),
        FoodPageBody(),
      ]),
    );
  }
}
