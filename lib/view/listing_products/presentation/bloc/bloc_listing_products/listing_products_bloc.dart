// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/models_listing_products.dart';
import '../../repository/repository_listing_products.dart';

part 'listing_products_event.dart';
part 'listing_products_state.dart';
part 'listing_products_bloc.freezed.dart';

@injectable
class ListingProductsBloc
    extends Bloc<ListingProductsEvent, ListingProductsState> {
  final RepositoryListingProducts listingProducts;
  ListingProductsBloc(this.listingProducts) : super(const _Initial()) {
    on<ListingProductsEvent>((event, emit) async {
      emit(const ListingProductsState.isLoading());
      final getProducts =
          await listingProducts.getListingProducts(condition: event.condition);
      await getProducts.fold(
        (l) {},
        (r) async {
          emit(ListingProductsState.isLoaded(listingProducts: r));
        },
      );
    });
  }
}
