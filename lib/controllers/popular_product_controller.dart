import 'package:food_delivery_flutter/data/repository/popular_product_repo.dart';
import 'package:food_delivery_flutter/models/product_model.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    // response ready

    // Check status of the Response
    if (response.statusCode == 200) {
      // response success

      print('got products');
      _popularProductList = []; // Make sure not repeated data
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // Like setState(){}
    }
  }
}
