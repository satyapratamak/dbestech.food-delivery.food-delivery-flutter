import 'package:food_delivery_flutter/data/repository/recommended_product_repo.dart';
import 'package:food_delivery_flutter/models/product_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  RecommendedProductRepo recommendedProductRepo;

  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];

  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();

    // response ready

    // Check status of the Response
    if (response.statusCode == 200) {
      // response success

      _recommendedProductList = []; // Make sure not repeated data
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // Like setState(){}
    }
  }
}
