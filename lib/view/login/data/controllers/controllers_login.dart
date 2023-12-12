import 'dart:convert';
import 'dart:developer';

import 'package:clothing_one/view/login/data/model/models_response_login.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../presentation/repository/repository_login.dart';

@Injectable(as: RepositoryLogin)
class ControllersLogin extends RepositoryLogin {
  Dio dio = Dio();
  ControllersLogin(this.dio);
  @override
  Future<Either<String, ModelsResponseLogin>> postLogin(
      {email, password}) async {
    const urlLogin = "https://fakestoreapi.com/auth/login";

    try {
      log("link $urlLogin");
      Map<String, dynamic> header = {
        "Accept": "application/json",
      };
      var json = {"username": "$email", "password": "$password"};
      final response = await dio.post(
        urlLogin,
        data: jsonEncode(json),
        options: Options(
          headers: header,
        ),
      );
      final result = response.data;
      final data = ModelsResponseLogin.fromJson(result);
      userGet(username: email);
      return right(data);
    } on DioException catch (e) {
      log("error $e");
      return left(e.response?.data["message"]);
    }
  }

  @override
  Future<Either<bool, bool>> userGet({username}) async {
    const user = 'https://fakestoreapi.com/users';
    try {
      final response = await dio.get(user);
      final result = response.data;
      debugPrint("hit user $user");
      result.forEach((e) async {
        if (username == e["username"]) {
          await const FlutterSecureStorage()
              .write(key: 'userId', value: e["id"].toString());
          await const FlutterSecureStorage()
              .write(key: 'userEmail', value: e["email"]);
          await const FlutterSecureStorage()
              .write(key: 'firstName', value: e["name"]["firstname"]);
          await const FlutterSecureStorage()
              .write(key: 'lastName', value: e["name"]["lastname"]);
        }
        await const FlutterSecureStorage()
            .read(key: 'userId')
            .then((value) => debugPrint("user id get $value"));
      });

      return right(true);
    } on DioException catch (e) {
      log("error $e");
      return left(false);
    }
  }
}
