import 'package:food_delivery_flutter/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProductRepo extends GetxService {
  // if using GetX State Management,
  //You have to extends GetxService to get data from internet

  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return apiClient.getData("https://jaridekat.com/product/list");
  }
}
