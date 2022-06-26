import 'package:food_delivery_flutter/controllers/popular_product_controller.dart';
import 'package:food_delivery_flutter/data/api/api_client.dart';
import 'package:food_delivery_flutter/data/repository/popular_product_repo.dart';
import 'package:food_delivery_flutter/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // ApiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  // Repos
  Get.lazyPut(
      () => PopularProductRepo(apiClient: Get.find())); // find ApiClient

  // Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
