import 'package:food_delivery_flutter/models/product_model.dart';

class CartModel {
  int? id;
  String? name;
  int? price;
  String? img;
  int? quantity;
  bool? isExists;
  String? time;
  ProductModel? product;

  CartModel({
    required id,
    required name,
    required price,
    required img,
    required quantity,
    required isExists,
    required time,
    required product,
  }) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.img = img;
    this.quantity = quantity;
    this.isExists = isExists;
    this.time = time;
    this.product = product;
  }

  CartModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];

    this.price = json['price'];

    this.img = json['img'];
    this.quantity = json['quantity'];
    this.isExists = json['isExists'];
    this.time = json['time'];
    this.product = ProductModel.fromJson(json['product']);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "price": this.price,
      "img": this.img,
      "quantity": this.quantity,
      "isExists": this.isExists,
      "time": this.time,
      "product": this.product!.toJson(),
    };
  }
}
