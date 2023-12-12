import 'dart:convert';
import 'dart:developer';

import 'package:clothing_one/view/listing_cart/data/model/models_listing_cart.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../presentation/repository/repository_add_cart.dart';

@Injectable(as: RepositoryAddCart)
class ControllersAddCart extends RepositoryAddCart {
  Dio dio = Dio();
  ControllersAddCart(this.dio);
  var secure = const FlutterSecureStorage();
  @override
  Future<Either<String, ModelsListingCart>> addCart({productId}) async {
    const urlAddCart = "https://fakestoreapi.com/carts";
    var userId = await secure.read(key: "userId");
    var formatter = DateFormat('yyyy-MM-dd');
    DateTime nows = DateTime.now();
    String formattedDate = formatter.format(nows);
    try {
      log("link $urlAddCart");
      Map<String, dynamic> header = {
        "Accept": "application/json",
      };
      var json = {
        "userId": userId,
        "date": formattedDate,
        "products": [
          {"productId": productId, "quantity": 1}
        ]
      };
      final response = await dio.post(
        urlAddCart,
        data: jsonEncode(json),
        options: Options(
          headers: header,
        ),
      );
      final result = response.data;
      final data = ModelsListingCart.fromJson(result);

      return right(data);
    } on DioException catch (e) {
      log("error $e");
      return left(e.response?.data["message"]);
    }
  }
}
