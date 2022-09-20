import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/pages/home/food_page_body.dart';
import 'package:food_delivery_flutter/utils/colors.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/big_text.dart';
import 'package:food_delivery_flutter/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // Header, Body, and Footer
        children: [
          //Header
          Container(
            child: Container(
              child: Container(
                margin: EdgeInsets.only(
                    top: Dimensions.height45, bottom: Dimensions.height15),
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20), // left 20, right 20
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Header Bar
                  children: [
                    Column(
                      // Country and City
                      children: [
                        BigText(text: "Indonesia", color: AppColors.mainColor),
                        Row(
                          children: [
                            SmallText(text: "Jakarta", color: Colors.black54),
                            const Icon(Icons.arrow_drop_down_rounded)
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        // Search Button
                        width: Dimensions.width45, // 45
                        height: Dimensions.height45, // 45
                        child: Icon(Icons.search,
                            color: Colors.white, size: Dimensions.iconSize24),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height15),
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Body
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),

          //Footer
        ],
      ),
    );
  }
}
