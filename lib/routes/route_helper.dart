import 'package:food_delivery_flutter/pages/food/popular_food_detail.dart';
import 'package:food_delivery_flutter/pages/food/recommended_food_details.dart';
import 'package:food_delivery_flutter/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFoodDetail = "/popular-food-detail";
  static const String recommendedFoodDetail = "/recommended-food-detail";

  static String getInitial() => '$initial';
  static String getPopularFoodDetail() => '$popularFoodDetail';
  static String getRecommendedFoodDetail() => '$recommendedFoodDetail';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
      name: popularFoodDetail,
      page: () {
        return PopularFoodDetail();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFoodDetail,
      page: () {
        return RecommendedFoodDetails();
      },
      transition: Transition.fadeIn,
    ),
  ];
}
