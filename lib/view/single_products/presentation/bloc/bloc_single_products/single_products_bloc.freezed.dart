// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleProductsEvent {
  int get idProducts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idProducts) getProductsSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idProducts)? getProductsSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idProducts)? getProductsSingle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getProductsSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getProductsSingle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getProductsSingle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleProductsEventCopyWith<SingleProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProductsEventCopyWith<$Res> {
  factory $SingleProductsEventCopyWith(
          SingleProductsEvent value, $Res Function(SingleProductsEvent) then) =
      _$SingleProductsEventCopyWithImpl<$Res, SingleProductsEvent>;
  @useResult
  $Res call({int idProducts});
}

/// @nodoc
class _$SingleProductsEventCopyWithImpl<$Res, $Val extends SingleProductsEvent>
    implements $SingleProductsEventCopyWith<$Res> {
  _$SingleProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducts = null,
  }) {
    return _then(_value.copyWith(
      idProducts: null == idProducts
          ? _value.idProducts
          : idProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $SingleProductsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idProducts});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SingleProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProducts = null,
  }) {
    return _then(_$StartedImpl(
      null == idProducts
          ? _value.idProducts
          : idProducts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.idProducts);

  @override
  final int idProducts;

  @override
  String toString() {
    return 'SingleProductsEvent.getProductsSingle(idProducts: $idProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.idProducts, idProducts) ||
                other.idProducts == idProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int idProducts) getProductsSingle,
  }) {
    return getProductsSingle(idProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int idProducts)? getProductsSingle,
  }) {
    return getProductsSingle?.call(idProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int idProducts)? getProductsSingle,
    required TResult orElse(),
  }) {
    if (getProductsSingle != null) {
      return getProductsSingle(idProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getProductsSingle,
  }) {
    return getProductsSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getProductsSingle,
  }) {
    return getProductsSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getProductsSingle,
    required TResult orElse(),
  }) {
    if (getProductsSingle != null) {
      return getProductsSingle(this);
    }
    return orElse();
  }
}

abstract class _Started implements SingleProductsEvent {
  const factory _Started(final int idProducts) = _$StartedImpl;

  @override
  int get idProducts;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SingleProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(ModelsSingleProducts singleProducts) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(ModelsSingleProducts singleProducts)? isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(ModelsSingleProducts singleProducts)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SingleProductsIsLoading value) isLoading,
    required TResult Function(SingleProductsIsLoaded value) isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SingleProductsIsLoading value)? isLoading,
    TResult? Function(SingleProductsIsLoaded value)? isLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SingleProductsIsLoading value)? isLoading,
    TResult Function(SingleProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProductsStateCopyWith<$Res> {
  factory $SingleProductsStateCopyWith(
          SingleProductsState value, $Res Function(SingleProductsState) then) =
      _$SingleProductsStateCopyWithImpl<$Res, SingleProductsState>;
}

/// @nodoc
class _$SingleProductsStateCopyWithImpl<$Res, $Val extends SingleProductsState>
    implements $SingleProductsStateCopyWith<$Res> {
  _$SingleProductsStateCopyWithImpl(this._value, this._then);

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
    extends _$SingleProductsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SingleProductsState.initial()';
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
    required TResult Function(ModelsSingleProducts singleProducts) isLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(ModelsSingleProducts singleProducts)? isLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(ModelsSingleProducts singleProducts)? isLoaded,
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
    required TResult Function(SingleProductsIsLoading value) isLoading,
    required TResult Function(SingleProductsIsLoaded value) isLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SingleProductsIsLoading value)? isLoading,
    TResult? Function(SingleProductsIsLoaded value)? isLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SingleProductsIsLoading value)? isLoading,
    TResult Function(SingleProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SingleProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SingleProductsIsLoadingImplCopyWith<$Res> {
  factory _$$SingleProductsIsLoadingImplCopyWith(
          _$SingleProductsIsLoadingImpl value,
          $Res Function(_$SingleProductsIsLoadingImpl) then) =
      __$$SingleProductsIsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SingleProductsIsLoadingImplCopyWithImpl<$Res>
    extends _$SingleProductsStateCopyWithImpl<$Res,
        _$SingleProductsIsLoadingImpl>
    implements _$$SingleProductsIsLoadingImplCopyWith<$Res> {
  __$$SingleProductsIsLoadingImplCopyWithImpl(
      _$SingleProductsIsLoadingImpl _value,
      $Res Function(_$SingleProductsIsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SingleProductsIsLoadingImpl implements SingleProductsIsLoading {
  const _$SingleProductsIsLoadingImpl();

  @override
  String toString() {
    return 'SingleProductsState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProductsIsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(ModelsSingleProducts singleProducts) isLoaded,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(ModelsSingleProducts singleProducts)? isLoaded,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(ModelsSingleProducts singleProducts)? isLoaded,
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
    required TResult Function(SingleProductsIsLoading value) isLoading,
    required TResult Function(SingleProductsIsLoaded value) isLoaded,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SingleProductsIsLoading value)? isLoading,
    TResult? Function(SingleProductsIsLoaded value)? isLoaded,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SingleProductsIsLoading value)? isLoading,
    TResult Function(SingleProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class SingleProductsIsLoading implements SingleProductsState {
  const factory SingleProductsIsLoading() = _$SingleProductsIsLoadingImpl;
}

/// @nodoc
abstract class _$$SingleProductsIsLoadedImplCopyWith<$Res> {
  factory _$$SingleProductsIsLoadedImplCopyWith(
          _$SingleProductsIsLoadedImpl value,
          $Res Function(_$SingleProductsIsLoadedImpl) then) =
      __$$SingleProductsIsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelsSingleProducts singleProducts});

  $ModelsSingleProductsCopyWith<$Res> get singleProducts;
}

/// @nodoc
class __$$SingleProductsIsLoadedImplCopyWithImpl<$Res>
    extends _$SingleProductsStateCopyWithImpl<$Res,
        _$SingleProductsIsLoadedImpl>
    implements _$$SingleProductsIsLoadedImplCopyWith<$Res> {
  __$$SingleProductsIsLoadedImplCopyWithImpl(
      _$SingleProductsIsLoadedImpl _value,
      $Res Function(_$SingleProductsIsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singleProducts = null,
  }) {
    return _then(_$SingleProductsIsLoadedImpl(
      singleProducts: null == singleProducts
          ? _value.singleProducts
          : singleProducts // ignore: cast_nullable_to_non_nullable
              as ModelsSingleProducts,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ModelsSingleProductsCopyWith<$Res> get singleProducts {
    return $ModelsSingleProductsCopyWith<$Res>(_value.singleProducts, (value) {
      return _then(_value.copyWith(singleProducts: value));
    });
  }
}

/// @nodoc

class _$SingleProductsIsLoadedImpl implements SingleProductsIsLoaded {
  const _$SingleProductsIsLoadedImpl({required this.singleProducts});

  @override
  final ModelsSingleProducts singleProducts;

  @override
  String toString() {
    return 'SingleProductsState.isLoaded(singleProducts: $singleProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProductsIsLoadedImpl &&
            (identical(other.singleProducts, singleProducts) ||
                other.singleProducts == singleProducts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, singleProducts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleProductsIsLoadedImplCopyWith<_$SingleProductsIsLoadedImpl>
      get copyWith => __$$SingleProductsIsLoadedImplCopyWithImpl<
          _$SingleProductsIsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLoading,
    required TResult Function(ModelsSingleProducts singleProducts) isLoaded,
  }) {
    return isLoaded(singleProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLoading,
    TResult? Function(ModelsSingleProducts singleProducts)? isLoaded,
  }) {
    return isLoaded?.call(singleProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLoading,
    TResult Function(ModelsSingleProducts singleProducts)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(singleProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SingleProductsIsLoading value) isLoading,
    required TResult Function(SingleProductsIsLoaded value) isLoaded,
  }) {
    return isLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SingleProductsIsLoading value)? isLoading,
    TResult? Function(SingleProductsIsLoaded value)? isLoaded,
  }) {
    return isLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SingleProductsIsLoading value)? isLoading,
    TResult Function(SingleProductsIsLoaded value)? isLoaded,
    required TResult orElse(),
  }) {
    if (isLoaded != null) {
      return isLoaded(this);
    }
    return orElse();
  }
}

abstract class SingleProductsIsLoaded implements SingleProductsState {
  const factory SingleProductsIsLoaded(
          {required final ModelsSingleProducts singleProducts}) =
      _$SingleProductsIsLoadedImpl;

  ModelsSingleProducts get singleProducts;
  @JsonKey(ignore: true)
  _$$SingleProductsIsLoadedImplCopyWith<_$SingleProductsIsLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
