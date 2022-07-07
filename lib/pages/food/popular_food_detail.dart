import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_flutter/pages/home/food_page_body.dart';
import 'package:food_delivery_flutter/pages/home/main_food_page.dart';
import 'package:food_delivery_flutter/routes/route_helper.dart';
import 'package:food_delivery_flutter/utils/colors.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/app_column.dart';
import 'package:food_delivery_flutter/widgets/app_icon.dart';
import 'package:food_delivery_flutter/widgets/big_text.dart';
import 'package:food_delivery_flutter/widgets/expandable_text.dart';
import 'package:food_delivery_flutter/widgets/icon_and_text.dart';
import 'package:food_delivery_flutter/widgets/small_text.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Main Image of Popular Food Details
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize * 0.80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.png"),
                ),
              ),
            ),
          ),
          // Back Button and Cart Button
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(RouteHelper.initial);
                    },
                    child: AppIcon(icon: Icons.arrow_back_ios)),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                )
              ],
            ),
          ),
          // Details Informations
          Positioned(
            top: Dimensions.popularFoodImgSize - 2.9 * Dimensions.height30,
            //top: Dimensions.popularFoodImgSize - Dimensions.height20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              //width: double.maxFinite,
              //height: Dimensions.screenHight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.height20),
                  topRight: Radius.circular(Dimensions.height20),
                ),
              ),
              // Information will be orderd vertically
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    foodTitle: "Chinese Side",
                  ),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Introduce", size: Dimensions.font20),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. "),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar * 0.78,
        width: double.maxFinite,
        padding: EdgeInsets.only(
          top: Dimensions.height20,
          bottom: Dimensions.height20,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Minus, Plus and Counting of Food
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              // height: Dimensions.height1 * 200,
              // width: Dimensions.width1 * 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),

            // Add Button
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height15,
                bottom: Dimensions.height15,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              // height: Dimensions.height1 * 200,
              // width: Dimensions.width1 * 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(text: "\$10 | Add to cart", color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
