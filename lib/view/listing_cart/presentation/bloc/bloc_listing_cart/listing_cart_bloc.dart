// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:clothing_one/view/listing_cart/presentation/repository/repository_listing_cart.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/model/custom_listing_cart.dart';

part 'listing_cart_event.dart';
part 'listing_cart_state.dart';
part 'listing_cart_bloc.freezed.dart';

@injectable
class ListingCartBloc extends Bloc<ListingCartEvent, ListingCartState> {
  RepositoryListingCart listingCart;
  ListingCartBloc(this.listingCart) : super(const _Initial()) {
    on<ListingCartEvent>((event, emit) async {
      emit(const ListingCartState.isLoading());
      final getData = await listingCart.getListingCart();
      getData.fold(
        (l) {},
        (r) {
          emit(ListingCartState.isLoaded(listingCart: r));
        },
      );
    });
  }
}
