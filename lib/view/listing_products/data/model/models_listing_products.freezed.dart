// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_listing_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModelsListingProducts _$ModelsListingProductsFromJson(
    Map<String, dynamic> json) {
  return _ModelsListingProducts.fromJson(json);
}

/// @nodoc
mixin _$ModelsListingProducts {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  Rating get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelsListingProductsCopyWith<ModelsListingProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelsListingProductsCopyWith<$Res> {
  factory $ModelsListingProductsCopyWith(ModelsListingProducts value,
          $Res Function(ModelsListingProducts) then) =
      _$ModelsListingProductsCopyWithImpl<$Res, ModelsListingProducts>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "rating") Rating rating});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$ModelsListingProductsCopyWithImpl<$Res,
        $Val extends ModelsListingProducts>
    implements $ModelsListingProductsCopyWith<$Res> {
  _$ModelsListingProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ModelsListingProductsImplCopyWith<$Res>
    implements $ModelsListingProductsCopyWith<$Res> {
  factory _$$ModelsListingProductsImplCopyWith(
          _$ModelsListingProductsImpl value,
          $Res Function(_$ModelsListingProductsImpl) then) =
      __$$ModelsListingProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "price") double price,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "image") String image,
      @JsonKey(name: "rating") Rating rating});

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$ModelsListingProductsImplCopyWithImpl<$Res>
    extends _$ModelsListingProductsCopyWithImpl<$Res,
        _$ModelsListingProductsImpl>
    implements _$$ModelsListingProductsImplCopyWith<$Res> {
  __$$ModelsListingProductsImplCopyWithImpl(_$ModelsListingProductsImpl _value,
      $Res Function(_$ModelsListingProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? description = null,
    Object? category = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$ModelsListingProductsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelsListingProductsImpl implements _ModelsListingProducts {
  const _$ModelsListingProductsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "rating") required this.rating});

  factory _$ModelsListingProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelsListingProductsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "price")
  final double price;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "image")
  final String image;
  @override
  @JsonKey(name: "rating")
  final Rating rating;

  @override
  String toString() {
    return 'ModelsListingProducts(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelsListingProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, price, description, category, image, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelsListingProductsImplCopyWith<_$ModelsListingProductsImpl>
      get copyWith => __$$ModelsListingProductsImplCopyWithImpl<
          _$ModelsListingProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelsListingProductsImplToJson(
      this,
    );
  }
}

abstract class _ModelsListingProducts implements ModelsListingProducts {
  const factory _ModelsListingProducts(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "price") required final double price,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "category") required final String category,
          @JsonKey(name: "image") required final String image,
          @JsonKey(name: "rating") required final Rating rating}) =
      _$ModelsListingProductsImpl;

  factory _ModelsListingProducts.fromJson(Map<String, dynamic> json) =
      _$ModelsListingProductsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "price")
  double get price;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(name: "rating")
  Rating get rating;
  @override
  @JsonKey(ignore: true)
  _$$ModelsListingProductsImplCopyWith<_$ModelsListingProductsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  @JsonKey(name: "rate")
  double get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {@JsonKey(name: "rate") double rate, @JsonKey(name: "count") int count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rate") double rate, @JsonKey(name: "count") int count});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = null,
    Object? count = null,
  }) {
    return _then(_$RatingImpl(
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {@JsonKey(name: "rate") required this.rate,
      @JsonKey(name: "count") required this.count});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  @JsonKey(name: "rate")
  final double rate;
  @override
  @JsonKey(name: "count")
  final int count;

  @override
  String toString() {
    return 'Rating(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {@JsonKey(name: "rate") required final double rate,
      @JsonKey(name: "count") required final int count}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  @JsonKey(name: "rate")
  double get rate;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
