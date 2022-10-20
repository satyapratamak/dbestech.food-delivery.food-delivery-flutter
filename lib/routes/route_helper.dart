import 'package:food_delivery_flutter/pages/cart/cart_page.dart';
import 'package:food_delivery_flutter/pages/food/popular_food_detail.dart';
import 'package:food_delivery_flutter/pages/food/recommended_food_details.dart';
import 'package:food_delivery_flutter/pages/home/home_page.dart';
import 'package:food_delivery_flutter/pages/home/main_food_page.dart';
import 'package:food_delivery_flutter/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFoodDetail = "/popular-food-detail";
  static const String recommendedFoodDetail = "/recommended-food-detail";
  static const String cartPage = "/cart-page";
  static const String splashPage = "/splash-page";

  static String getInitial() => '$initial';
  static String getPopularFoodDetail(int pageId, String prevPage) =>
      '$popularFoodDetail?pageId=$pageId&prevPage=$prevPage';
  static String getRecommendedFoodDetail(int pageId, String prevPage) =>
      '$recommendedFoodDetail?pageId=$pageId&prevPage=$prevPage';
  static String getCartPage() => '$cartPage';
  static String getSplashPage() => '$splashPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => HomePage()),
    GetPage(
      name: popularFoodDetail,
      page: () {
        var pageId = Get.parameters['pageId'];
        var prevPage = Get.parameters['prevPage'];

        return PopularFoodDetail(
          pageId: int.parse(pageId!),
          prevPage: prevPage!,
        );
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFoodDetail,
      page: () {
        var pageId = Get.parameters['pageId'];
        var prevPage = Get.parameters['prevPage'];

        return RecommendedFoodDetails(
          pageId: int.parse(pageId!),
          prevPage: prevPage!,
        );
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: cartPage,
      page: () {
        //var pageId = Get.parameters['pageId'];

        // return RecommendedFoodDetails(
        //   pageId: int.parse(pageId!),
        // );
        return CartPage();
      },
      transition: Transition.fadeIn,
    ),
    GetPage(name: splashPage, page: () => SplashScreen()),
  ];
}
