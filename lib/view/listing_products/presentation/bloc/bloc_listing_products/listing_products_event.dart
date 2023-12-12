part of 'listing_products_bloc.dart';

@freezed
class ListingProductsEvent with _$ListingProductsEvent {
  const factory ListingProductsEvent.getProductsListing(bool condition) =
      _Started;
}
