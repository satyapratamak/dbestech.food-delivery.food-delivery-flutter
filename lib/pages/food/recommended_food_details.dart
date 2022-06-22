import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/utils/colors.dart';

import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/app_icon.dart';
import 'package:food_delivery_flutter/widgets/big_text.dart';
import 'package:food_delivery_flutter/widgets/expandable_text.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _pinned = true;
    bool _snap = false;
    bool _floating = false;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            backgroundColor: AppColors.yellowColor,
            toolbarHeight: Dimensions.height80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: Dimensions.height5,
                  bottom: Dimensions.height10,
                ),
                child: Center(
                  child: BigText(
                    text: "Sliver App Bar",
                    size: Dimensions.font26,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            snap: _snap,
            floating: _floating,
            expandedHeight: Dimensions.height265,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text:
                        "Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. But the key to this classic side is the sauce that is mixed with the noodles. You can make Chow Mein into a full course dinner if you add meat and veggies, but for our purposes, we'll stick with a side dish recipe.Chow Mein is a classic Chinese side dish made with noodles. ",
                  ),
                ),
                SizedBox(height: Dimensions.height50),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.remove,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: "\$12.8  X  0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  iconSize: Dimensions.iconSize24,
                  icon: Icons.add,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
