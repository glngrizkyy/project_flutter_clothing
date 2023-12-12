import 'dart:developer';

import 'package:clothing_one/core/failure_global/failure_global.dart';

import 'package:clothing_one/view/listing_products/data/model/models_listing_products.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure_global/failure.dart';
import '../../presentation/repository/repository_listing_products.dart';

@Injectable(as: RepositoryListingProducts)
class ControllersListingProducts extends RepositoryListingProducts {
  Dio dio = Dio();
  ControllersListingProducts(this.dio);
  @override
  Future<Either<FailureGlobal, List<ModelsListingProducts>>> getListingProducts(
      {bool condition = false}) async {
    List<ModelsListingProducts> list = [];
    var urlListingProducts = condition == false
        ? "https://fakestoreapi.com/products"
        : "https://fakestoreapi.com/products?limit=5";
    try {
      final response = await dio.get(urlListingProducts);
      final result = response.data;
      debugPrint("hit listing products $urlListingProducts");
      result.forEach((e) {
        list.add(ModelsListingProducts.fromJson(e));
      });
      return right(list);
    } on DioException catch (e) {
      log("error $e");
      return left(FailureResponse.check(e.response?.statusCode ?? 500));
    }
  }
}
