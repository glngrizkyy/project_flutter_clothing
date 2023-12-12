import 'package:dartz/dartz.dart';

import '../../../../core/failure_global/failure_global.dart';
import '../../data/model/models_single_products.dart';

abstract class RepositorySingleProducts {
  Future<Either<FailureGlobal, ModelsSingleProducts>> getSingleProducts(
      {int idProduct = 0});
}
