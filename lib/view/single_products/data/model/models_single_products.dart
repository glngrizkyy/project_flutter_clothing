// ignore_for_file: invalid_annotation_target, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'models_single_products.freezed.dart';
part 'models_single_products.g.dart';

@freezed
class ModelsSingleProducts with _$ModelsSingleProducts {
  const factory ModelsSingleProducts({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "rating") required Rating rating,
  }) = _ModelsSingleProducts;

  factory ModelsSingleProducts.fromJson(Map<String, dynamic> json) =>
      _$ModelsSingleProductsFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: "rate") required double rate,
    @JsonKey(name: "count") required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
