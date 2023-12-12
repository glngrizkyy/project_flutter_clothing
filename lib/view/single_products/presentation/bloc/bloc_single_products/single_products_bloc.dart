// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/models_single_products.dart';
import '../../repository/repository_single_products.dart';

part 'single_products_event.dart';
part 'single_products_state.dart';
part 'single_products_bloc.freezed.dart';

@injectable
class SingleProductsBloc
    extends Bloc<SingleProductsEvent, SingleProductsState> {
  final RepositorySingleProducts singleProducts;
  SingleProductsBloc(this.singleProducts) : super(const _Initial()) {
    on<SingleProductsEvent>((event, emit) async {
      emit(const SingleProductsState.isLoading());
      final getProducts =
          await singleProducts.getSingleProducts(idProduct: event.idProducts);
      await getProducts.fold(
        (l) {},
        (r) async {
          emit(SingleProductsState.isLoaded(singleProducts: r));
        },
      );
    });
  }
}
