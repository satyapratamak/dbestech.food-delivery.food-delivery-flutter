import 'dart:convert';

import 'package:food_delivery_flutter/models/cart_model.dart';
import 'package:food_delivery_flutter/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;

  CartRepo({required this.sharedPreferences});

  // Shared Preference save data as a String
  List<String> cart = [];

  List<String> cartHistory = [];

  void addToCartList(List<CartModel> cartList) {
    //sharedPreferences.remove(AppConstants.CART_LIST);
    //sharedPreferences.remove(AppConstants.CART_HISTORY_LIST);
    cart = [];
    // convert objects to String because sharedpreference only accept String
    /*
    cartList.forEach((element) {
      return cart.add(jsonEncode(element));
    });

    */
    cartList.forEach((element) => cart.add(jsonEncode(element)));

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);

    //print(sharedPreferences.getStringList(AppConstants.CART_LIST));

    getCartList();
  }

  List<CartModel> getCartList() {
    List<String> carts = [];

    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartList :  " + carts.toString());
    }

    List<CartModel> cartList = [];
    carts.forEach(
        (element) => cartList.add(CartModel.fromJson(jsonDecode(element))));

    /**
     carts.forEach((element) => CartModel.fromJson(jsonDecode(element)));
     */

    return cartList;
  }

  List<CartModel> getCartHistoryList() {
    if (sharedPreferences.containsKey(AppConstants.CART_HISTORY_LIST)) {
      cartHistory = [];
      cartHistory =
          (sharedPreferences.getStringList(AppConstants.CART_HISTORY_LIST))!;
    }
    List<CartModel> cartHistoryList = [];

    cartHistory.forEach((element) =>
        cartHistoryList.add(CartModel.fromJson(jsonDecode(element))));

    return cartHistoryList;
  }

  void addToCartHistoryList() {
    if (sharedPreferences.containsKey(AppConstants.CART_HISTORY_LIST)) {
      cartHistory =
          sharedPreferences.getStringList(AppConstants.CART_HISTORY_LIST)!;
    }
    for (int i = 0; i < cart.length; i++) {
      print("History list : " + cart[i]);
      cartHistory.add(cart[i]);
    }
    removeCart();
    sharedPreferences.setStringList(
        AppConstants.CART_HISTORY_LIST, cartHistory);
    print("The length of history list is : " +
        getCartHistoryList().length.toString());
  }

  void removeCart() {
    cart = [];
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}
