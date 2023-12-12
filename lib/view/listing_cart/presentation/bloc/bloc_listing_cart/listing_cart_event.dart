part of 'listing_cart_bloc.dart';

@freezed
class ListingCartEvent with _$ListingCartEvent {
  const factory ListingCartEvent.getCartListing() = _Started;
}
