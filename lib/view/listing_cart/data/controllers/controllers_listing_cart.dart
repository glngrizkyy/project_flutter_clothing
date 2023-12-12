import 'dart:developer';

import 'package:clothing_one/core/failure_global/failure_global.dart';
import 'package:clothing_one/view/listing_cart/data/model/custom_listing_cart.dart';
import 'package:clothing_one/view/listing_cart/presentation/repository/repository_listing_cart.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure_global/failure.dart';

@Injectable(as: RepositoryListingCart)
class ControllersListingCart extends RepositoryListingCart {
  Dio dio = Dio();
  ControllersListingCart(this.dio);
  var secure = const FlutterSecureStorage();
  @override
  Future<Either<FailureGlobal, List<Products>>> getListingCart() async {
    var userId = await secure.read(key: "userId");
    List<Products> list = [];
    var urlListingcart = "https://fakestoreapi.com/carts";
    try {
      final response = await dio.get(urlListingcart);
      var result = response.data;
      debugPrint("hit listing cart $urlListingcart");
      var product = await userGetProduct();
      debugPrint("hit listing cart $product");
      result.forEach((e) {
        log("user id $userId");
        if (userId == e["userId"].toString()) {
          e["products"].forEach((r) {
            product.forEach((q) {
              var id = q["id"].toString();

              var idProduct = r["productId"].toString();

              if (id == idProduct) {
                list.add(
                  Products(
                    productId: r["productId"],
                    quantity: r["quantity"],
                    title: q["title"],
                    price: q["price"],
                    description: q["description"],
                    category: q["category"],
                    image: q["image"],
                  ),
                );
              } else {}
            });
          });
        }
      });
      return right(list);
    } on DioException catch (e) {
      log("error $e");
      return left(FailureResponse.check(e.response?.statusCode ?? 500));
    }
  }

  @override
  Future<dynamic> userGetProduct() async {
    List<dynamic> list = [];
    const user = 'https://fakestoreapi.com/products';
    try {
      final response = await dio.get(user);
      final result = response.data;
      debugPrint("hit user $user");
      result.forEach((e) {
        list.add(e);
      });
      return list;
    } on DioException catch (e) {
      log("error $e");
      return false;
    }
  }
}
