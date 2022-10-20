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
  static double height40 = height10 * 4.0;
  static double height50 = height10 * 5.0;
  static double height60 = height10 * 6.0;
  static double height80 = height1 * 80.0;
  static double height2 = height1 * 2;
  static double height3 = height1 * 3;
  static double height5 = height1 * 5;
  static double height700 = height1 * 700;
  static double height120 = height1 * 120;
  static double height110 = height1 * 110;
  static double height100 = height1 * 100;
  static double height105 = height1 * 105;
  static double height350 = height1 * 350;

  static double height275 = height1 * 275;
  static double height265 = height1 * 265;

  // dynamic width
  static double width1 = screenWidth / 411.42857142857144;
  static double width10 = width1 * 10;
  static double width5 = width1 * 5;
  static double width15 = width10 * 1.5;
  static double width20 = width10 * 2;
  static double width30 = width10 * 3;
  static double width45 = width10 * 4.5;
  static double width100 = width1 * 100;
  static double width120 = width1 * 120;
  static double width200 = width1 * 200;
  static double width250 = width1 * 250;

  static double font20 = height20;
  static double font15 = height15;
  static double font16 = height1 * 16;
  static double font24 = height24;
  static double font1 = height1;
  static double font26 = font1 * 26;

  static double radius20 = height20;
  static double radius30 = height30;
  static double radius5 = height10 / 2;

  // List View Size
  static double listViewImgSize = width1 * 120; // 120
  static double listViewTextContSize = height1 * 105; //100

  // Popular Food Image
  static double popularFoodImgSize = height350;

  // Icon size
  static double iconSize16 = height1 * 16;
  static double iconSize24 = height10 * 2.4;

  // Bottom height
  static double bottomHeightBar = height1 * 120;
}
