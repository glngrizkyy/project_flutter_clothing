// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListingProductsEvent {
  bool get condition => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool condition) getProductsListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool condition)? getProductsListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool condition)? getProductsListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getProductsListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getProductsListing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getProductsListing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListingProductsEventCopyWith<ListingProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingProductsEventCopyWith<$Res> {
  factory $ListingProductsEventCopyWith(ListingProductsEvent value,
          $Res Function(ListingProductsEvent) then) =
      _$ListingProductsEventCopyWithImpl<$Res, ListingProductsEvent>;
  @useResult
  $Res call({bool condition});
}

/// @nodoc
class _$ListingProductsEventCopyWithImpl<$Res,
        $Val extends ListingProductsEvent>
    implements $ListingProductsEventCopyWith<$Res> {
  _$ListingProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $ListingProductsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool condition});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ListingProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? condition = null,
  }) {
    return _then(_$StartedImpl(
      null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.condition);

  @override
  final bool condition;

  @override
  String toString() {
    return 'ListingProductsEvent.getProductsListing(condition: $condition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool condition) getProductsListing,
  }) {
    return getProductsListing(condition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool condition)? getProductsListing,
  }) {
    return getProductsListing?.call(condition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool condition)? getProductsListing,
    required TResult orElse(),
  }) {
    if (getProductsListing != null) {
      return getProductsListing(condition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getProductsListing,
  }) {
    return getProductsListing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getProductsListing,
  }) {
    return getProductsListing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getProductsListing,
    required TResult orElse(),
  }) {
    if (getProductsListing != null) {
      return getProductsListing(this);
    }
    return orElse();
  }
}

abstract class _Started implements ListingProductsEvent {
  const factory _Started(final bool condition) = _$StartedImpl;

  @override
  bool get condition;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListingProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<ModelsListingProducts> listingProducts)
        isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(List<ModelsListingProducts> listingProducts)? isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<ModelsListingProducts> listingProducts)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ListingProductsIsLoading value) isLoading,
    required TResult Function(ListingProductsIsLoaded value) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ListingProductsIsLoading value)? isLoading,
    TResult? Function(ListingProductsIsLoaded value)? isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ListingProductsIsLoading value)? isLoading,
    TResult Function(ListingProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListingProductsStateCopyWith<$Res> {
  factory $ListingProductsStateCopyWith(ListingProductsState value,
          $Res Function(ListingProductsState) then) =
      _$ListingProductsStateCopyWithImpl<$Res, ListingProductsState>;
}

/// @nodoc
class _$ListingProductsStateCopyWithImpl<$Res,
        $Val extends ListingProductsState>
    implements $ListingProductsStateCopyWith<$Res> {
  _$ListingProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListingProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ListingProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<ModelsListingProducts> listingProducts)
        isLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(List<ModelsListingProducts> listingProducts)? isLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<ModelsListingProducts> listingProducts)? isLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ListingProductsIsLoading value) isLoading,
    required TResult Function(ListingProductsIsLoaded value) isLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ListingProductsIsLoading value)? isLoading,
    TResult? Function(ListingProductsIsLoaded value)? isLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ListingProductsIsLoading value)? isLoading,
    TResult Function(ListingProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListingProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ListingProductsIsLoadingImplCopyWith<$Res> {
  factory _$$ListingProductsIsLoadingImplCopyWith(
          _$ListingProductsIsLoadingImpl value,
          $Res Function(_$ListingProductsIsLoadingImpl) then) =
      __$$ListingProductsIsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListingProductsIsLoadingImplCopyWithImpl<$Res>
    extends _$ListingProductsStateCopyWithImpl<$Res,
        _$ListingProductsIsLoadingImpl>
    implements _$$ListingProductsIsLoadingImplCopyWith<$Res> {
  __$$ListingProductsIsLoadingImplCopyWithImpl(
      _$ListingProductsIsLoadingImpl _value,
      $Res Function(_$ListingProductsIsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListingProductsIsLoadingImpl implements ListingProductsIsLoading {
  const _$ListingProductsIsLoadingImpl();

  @override
  String toString() {
    return 'ListingProductsState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingProductsIsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<ModelsListingProducts> listingProducts)
        isLoaded,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(List<ModelsListingProducts> listingProducts)? isLoaded,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<ModelsListingProducts> listingProducts)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ListingProductsIsLoading value) isLoading,
    required TResult Function(ListingProductsIsLoaded value) isLoaded,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ListingProductsIsLoading value)? isLoading,
    TResult? Function(ListingProductsIsLoaded value)? isLoaded,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ListingProductsIsLoading value)? isLoading,
    TResult Function(ListingProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class ListingProductsIsLoading implements ListingProductsState {
  const factory ListingProductsIsLoading() = _$ListingProductsIsLoadingImpl;
}

/// @nodoc
abstract class _$$ListingProductsIsLoadedImplCopyWith<$Res> {
  factory _$$ListingProductsIsLoadedImplCopyWith(
          _$ListingProductsIsLoadedImpl value,
          $Res Function(_$ListingProductsIsLoadedImpl) then) =
      __$$ListingProductsIsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ModelsListingProducts> listingProducts});
}

/// @nodoc
class __$$ListingProductsIsLoadedImplCopyWithImpl<$Res>
    extends _$ListingProductsStateCopyWithImpl<$Res,
        _$ListingProductsIsLoadedImpl>
    implements _$$ListingProductsIsLoadedImplCopyWith<$Res> {
  __$$ListingProductsIsLoadedImplCopyWithImpl(
      _$ListingProductsIsLoadedImpl _value,
      $Res Function(_$ListingProductsIsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listingProducts = null,
  }) {
    return _then(_$ListingProductsIsLoadedImpl(
      listingProducts: null == listingProducts
          ? _value._listingProducts
          : listingProducts // ignore: cast_nullable_to_non_nullable
              as List<ModelsListingProducts>,
    ));
  }
}

/// @nodoc

class _$ListingProductsIsLoadedImpl implements ListingProductsIsLoaded {
  const _$ListingProductsIsLoadedImpl(
      {required final List<ModelsListingProducts> listingProducts})
      : _listingProducts = listingProducts;

  final List<ModelsListingProducts> _listingProducts;
  @override
  List<ModelsListingProducts> get listingProducts {
    if (_listingProducts is EqualUnmodifiableListView) return _listingProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listingProducts);
  }

  @override
  String toString() {
    return 'ListingProductsState.isLoaded(listingProducts: $listingProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListingProductsIsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._listingProducts, _listingProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listingProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListingProductsIsLoadedImplCopyWith<_$ListingProductsIsLoadedImpl>
      get copyWith => __$$ListingProductsIsLoadedImplCopyWithImpl<
          _$ListingProductsIsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(List<ModelsListingProducts> listingProducts)
        isLoaded,
  }) {
    return isLoaded(listingProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(List<ModelsListingProducts> listingProducts)? isLoaded,
  }) {
    return isLoaded?.call(listingProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(List<ModelsListingProducts> listingProducts)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(listingProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ListingProductsIsLoading value) isLoading,
    required TResult Function(ListingProductsIsLoaded value) isLoaded,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ListingProductsIsLoading value)? isLoading,
    TResult? Function(ListingProductsIsLoaded value)? isLoaded,
  }) {
    return isLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ListingProductsIsLoading value)? isLoading,
    TResult Function(ListingProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class ListingProductsIsLoaded implements ListingProductsState {
  const factory ListingProductsIsLoaded(
          {required final List<ModelsListingProducts> listingProducts}) =
      _$ListingProductsIsLoadedImpl;

  List<ModelsListingProducts> get listingProducts;
  @JsonKey(ignore: true)
  _$$ListingProductsIsLoadedImplCopyWith<_$ListingProductsIsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
