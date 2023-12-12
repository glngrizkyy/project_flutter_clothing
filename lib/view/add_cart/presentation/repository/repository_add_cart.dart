import 'package:dartz/dartz.dart';

import '../../../listing_cart/data/model/models_listing_cart.dart';

abstract class RepositoryAddCart {
  Future<Either<String, ModelsListingCart>> addCart({dynamic productId});
}
