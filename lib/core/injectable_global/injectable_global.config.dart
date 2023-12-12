// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:clothing_one/core/dio_injectable_global/dio_injectable_global.dart'
    as _i19;
import 'package:clothing_one/view/add_cart/data/controllers/controllers_add_cart.dart'
    as _i5;
import 'package:clothing_one/view/add_cart/presentation/bloc/add_cart_bloc.dart'
    as _i15;
import 'package:clothing_one/view/add_cart/presentation/repository/repository_add_cart.dart'
    as _i4;
import 'package:clothing_one/view/listing_cart/data/controllers/controllers_listing_cart.dart'
    as _i7;
import 'package:clothing_one/view/listing_cart/presentation/bloc/bloc_listing_cart/listing_cart_bloc.dart'
    as _i16;
import 'package:clothing_one/view/listing_cart/presentation/repository/repository_listing_cart.dart'
    as _i6;
import 'package:clothing_one/view/listing_products/data/controllers/controllers_listing_products.dart'
    as _i9;
import 'package:clothing_one/view/listing_products/presentation/bloc/bloc_listing_products/listing_products_bloc.dart'
    as _i17;
import 'package:clothing_one/view/listing_products/presentation/repository/repository_listing_products.dart'
    as _i8;
import 'package:clothing_one/view/login/data/controllers/controllers_login.dart'
    as _i11;
import 'package:clothing_one/view/login/presentation/bloc/login_response_bloc.dart'
    as _i18;
import 'package:clothing_one/view/login/presentation/repository/repository_login.dart'
    as _i10;
import 'package:clothing_one/view/single_products/data/controllers/controllers_single_products.dart'
    as _i13;
import 'package:clothing_one/view/single_products/presentation/bloc/bloc_single_products/single_products_bloc.dart'
    as _i14;
import 'package:clothing_one/view/single_products/presentation/repository/repository_single_products.dart'
    as _i12;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioInjectableGlobal = _$DioInjectableGlobal();
    gh.lazySingleton<_i3.Dio>(() => dioInjectableGlobal.dio);
    gh.factory<_i4.RepositoryAddCart>(
        () => _i5.ControllersAddCart(gh<_i3.Dio>()));
    gh.factory<_i6.RepositoryListingCart>(
        () => _i7.ControllersListingCart(gh<_i3.Dio>()));
    gh.factory<_i8.RepositoryListingProducts>(
        () => _i9.ControllersListingProducts(gh<_i3.Dio>()));
    gh.factory<_i10.RepositoryLogin>(
        () => _i11.ControllersLogin(gh<_i3.Dio>()));
    gh.factory<_i12.RepositorySingleProducts>(
        () => _i13.ControllersSingleProducts(gh<_i3.Dio>()));
    gh.factory<_i14.SingleProductsBloc>(
        () => _i14.SingleProductsBloc(gh<_i12.RepositorySingleProducts>()));
    gh.factory<_i15.AddCartBloc>(
        () => _i15.AddCartBloc(gh<_i4.RepositoryAddCart>()));
    gh.factory<_i16.ListingCartBloc>(
        () => _i16.ListingCartBloc(gh<_i6.RepositoryListingCart>()));
    gh.factory<_i17.ListingProductsBloc>(
        () => _i17.ListingProductsBloc(gh<_i8.RepositoryListingProducts>()));
    gh.factory<_i18.LoginResponseBloc>(
        () => _i18.LoginResponseBloc(gh<_i10.RepositoryLogin>()));
    return this;
  }
}

class _$DioInjectableGlobal extends _i19.DioInjectableGlobal {}
