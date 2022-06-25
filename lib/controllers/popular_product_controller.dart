import 'package:food_delivery_flutter/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    // response ready

    // Check status of the Response
    if (response.statusCode == 200) {
      // response success

      _popularProductList = []; // Make sure not repeated data
      //_popularProductList.addAll();
      update(); // Like setState(){}
    }
  }
}
