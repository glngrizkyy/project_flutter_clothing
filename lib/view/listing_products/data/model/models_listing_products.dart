// ignore_for_file: unused_import, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'models_listing_products.freezed.dart';
part 'models_listing_products.g.dart';

@freezed
class ModelsListingProducts with _$ModelsListingProducts {
  const factory ModelsListingProducts({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "price") required double price,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "category") required String category,
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "rating") required Rating rating,
  }) = _ModelsListingProducts;

  factory ModelsListingProducts.fromJson(Map<String, dynamic> json) =>
      _$ModelsListingProductsFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: "rate") required double rate,
    @JsonKey(name: "count") required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
