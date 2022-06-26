import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_flutter/utils/colors.dart';
import 'package:food_delivery_flutter/utils/dimensions.dart';
import 'package:food_delivery_flutter/widgets/big_text.dart';
import 'package:food_delivery_flutter/widgets/icon_and_text.dart';
import 'package:food_delivery_flutter/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String foodTitle;
  const AppColumn({Key? key, required this.foodTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Food Name
        BigText(text: foodTitle, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10),
        // Rating and Comments
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(Icons.star,
                    color: AppColors.mainColor, size: Dimensions.font15),
              ),
            ),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "4.5"),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "1,287"),
            SizedBox(width: Dimensions.width10),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height15),
        //Spicy IconText, Distance IconText and Cooking Time IconText
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconColor: AppColors.iconColor1,
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              text: "1.7 Km",
              iconColor: AppColors.mainColor,
            ),
            IconAndTextWidget(
              icon: Icons.access_time_rounded,
              text: "32 mins",
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),

        // Spicy, Distance and Time Cooking
      ],
    );
  }
}
