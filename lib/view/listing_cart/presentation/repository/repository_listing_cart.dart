import 'package:clothing_one/core/failure_global/failure_global.dart';
import 'package:dartz/dartz.dart';

import '../../data/model/custom_listing_cart.dart';

abstract class RepositoryListingCart {
  Future<Either<FailureGlobal, List<Products>>> getListingCart();
  Future<dynamic> userGetProduct();
}
