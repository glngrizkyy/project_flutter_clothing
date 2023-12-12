part of 'listing_products_bloc.dart';

@freezed
class ListingProductsState with _$ListingProductsState {
  const factory ListingProductsState.initial() = _Initial;
  const factory ListingProductsState.isLoading() = ListingProductsIsLoading;
  const factory ListingProductsState.isLoaded(
          {required List<ModelsListingProducts> listingProducts}) =
      ListingProductsIsLoaded;
}
