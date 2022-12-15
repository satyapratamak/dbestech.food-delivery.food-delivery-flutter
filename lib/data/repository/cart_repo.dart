import 'dart:convert';

import 'package:food_delivery_flutter/models/cart_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;

  CartRepo({required this.sharedPreferences});

  // Shared Preference save data as a String
  List<String> cart = [];
  void addToCartList(List<CartModel> cartList) {
    cart = [];

    // convert objects to String because sharedpreference only accept String
    cartList.forEach((element) {
      return cart.add(jsonEncode(element));
    });

    sharedPreferences.setStringList("Cart-list", cart);
    print(sharedPreferences.getStringList("Cart-list"));
  }
}
