import 'package:food_delivery_flutter/controllers/cart_controller.dart';
import 'package:food_delivery_flutter/controllers/popular_product_controller.dart';
import 'package:food_delivery_flutter/controllers/recommended_product_controller.dart';
import 'package:food_delivery_flutter/data/api/api_client.dart';
import 'package:food_delivery_flutter/data/repository/cart_repo.dart';
import 'package:food_delivery_flutter/data/repository/popular_product_repo.dart';
import 'package:food_delivery_flutter/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_flutter/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // ApiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repos
  Get.lazyPut(
      () => PopularProductRepo(apiClient: Get.find())); // find ApiClient
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  // Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
