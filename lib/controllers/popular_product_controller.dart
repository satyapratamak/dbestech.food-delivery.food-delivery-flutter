import 'package:flutter/material.dart';
import 'package:food_delivery_flutter/controllers/cart_controller.dart';
import 'package:food_delivery_flutter/data/repository/popular_product_repo.dart';
import 'package:food_delivery_flutter/models/cart_model.dart';
import 'package:food_delivery_flutter/models/product_model.dart';
import 'package:food_delivery_flutter/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];

  List<dynamic> get popularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  int _quantity = 0;

  // Item Quantity in cart
  int _inCartItems = 0;

  int get quantity => _quantity;
  int get inCartItems => _inCartItems + _quantity;

  late CartController _cart;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();

    // response ready

    // Check status of the Response
    if (response.statusCode == 200) {
      // response success

      _popularProductList = []; // Make sure not repeated data
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      update(); // Like setState(){}
    }
  }

  void setQuantity(bool isIncreament) {
    int input;
    if (isIncreament) {
      _quantity++;
      print("INCREAMENT : number of items = $_quantity");
      _quantity = checkQuantity(_quantity, 20);
    } else {
      _quantity--;
      print("DECREAMENT : number of items = $_quantity");
      _quantity = checkQuantity(_quantity, 20);
    }

    update();
  }

  int checkQuantity(int quantity, int maxValue) {
    if ((_inCartItems + _quantity) < 0) {
      Get.snackbar(
        "Item Count",
        "You can't decrease quantity more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );

      if (_inCartItems > 0) {
        _quantity = -_inCartItems;
        return _quantity;
      }
      return 0;
    } else {
      if ((_inCartItems + _quantity) > maxValue) {
        Get.snackbar(
          "Item Count",
          "You can't increase quantity more than $maxValue !",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
        );
        return maxValue;
      } else {
        return quantity;
      }
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _inCartItems = 0;
    _cart = cart;
    var isExists = false;
    isExists = _cart.isExistsInCart(product);

    if (isExists) {
      _inCartItems = _cart.getQuantity(product)!;
    }
  }

  void addItem(ProductModel product) {
    //if ((_inCartItems + _quantity) > 0) {
    _cart.addItem(product, _quantity);
    _quantity = 0;
    _inCartItems = _cart.getQuantity(product)!;
    _cart.items.forEach((key, value) {
      print(
          "Item is ${value.name} with quantity = ${value.quantity.toString()}");
    });
    update();
  }

  int get totalItems {
    return _cart.totalItems;
  }

  List<CartModel> get getItems {
    return _cart.getItems;
  }

  void EmptyCart() {
    Get.snackbar(
      "Empty Cart",
      "You can't open empty cart",
      backgroundColor: AppColors.mainColor,
      colorText: Colors.white,
    );
  }
}
