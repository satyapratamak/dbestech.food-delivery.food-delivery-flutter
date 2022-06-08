import 'package:get/get.dart';

class Dimensions {
  static double screenHight = Get.context!.height;
  static double screenWidth = Get.context!.width; // 411.42857142857144

  static double pageViewContainer = screenHight / 3.106493506494155; // 220
  static double pageViewTextContainer = screenHight / 5.695238095239283; // 120
  static double pageView = screenHight / 2.135714285714731; // 320

// dynamic height
  static double height1 = screenHight / 683.4285714285714;
  static double height10 = height1 * 10;
  static double height15 = height10 * 1.5;
  static double height20 = height10 * 2;
  static double height30 = height10 * 3;
  static double height24 = height10 * 2.4;
  static double height45 = height10 * 4.5;
  static double height2 = height1 * 2;
  static double height3 = height1 * 3;

  // dynamic width
  static double width1 = screenWidth / 411.42857142857144;
  static double width10 = width1 * 10;
  static double width5 = width1 * 5;
  static double width15 = width10 * 1.5;
  static double width20 = width10 * 2;
  static double width30 = width10 * 3;
  static double width45 = width10 * 4.5;

  static double font20 = height20;
  static double font15 = height15;

  static double radius20 = height20;
  static double radius30 = height30;
  static double radius5 = height10 / 2;

  static double iconSize24 = height10 * 2.4;
}
