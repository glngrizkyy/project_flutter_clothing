part of 'listing_cart_bloc.dart';

@freezed
class ListingCartState with _$ListingCartState {
  const factory ListingCartState.initial() = _Initial;
  const factory ListingCartState.isLoading() = ListingCartIsLoading;
  const factory ListingCartState.isLoaded(
      {required List<Products> listingCart}) = ListingCartIsLoaded;
}
