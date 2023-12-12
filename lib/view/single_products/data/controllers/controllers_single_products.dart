import 'dart:developer';

import 'package:clothing_one/core/failure_global/failure_global.dart';
import 'package:clothing_one/view/single_products/data/model/models_single_products.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure_global/failure.dart';
import '../../presentation/repository/repository_single_products.dart';

@Injectable(as: RepositorySingleProducts)
class ControllersSingleProducts extends RepositorySingleProducts {
  Dio dio = Dio();
  ControllersSingleProducts(this.dio);
  @override
  Future<Either<FailureGlobal, ModelsSingleProducts>> getSingleProducts(
      {int idProduct = 0}) async {
    var urlSingleProducts = "https://fakestoreapi.com/products/$idProduct";
    try {
      final response = await dio.get(urlSingleProducts);
      final result = response.data;
      debugPrint("hit single products $urlSingleProducts");
      return right(ModelsSingleProducts.fromJson(result));
    } on DioException catch (e) {
      log("error $e");
      return left(FailureResponse.check(e.response?.statusCode ?? 500));
    }
  }
}
