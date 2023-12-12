import 'package:dartz/dartz.dart';

import '../../../../core/failure_global/failure_global.dart';
import '../../data/model/models_listing_products.dart';

abstract class RepositoryListingProducts {
  Future<Either<FailureGlobal, List<ModelsListingProducts>>> getListingProducts(
      {bool condition = false});
}
