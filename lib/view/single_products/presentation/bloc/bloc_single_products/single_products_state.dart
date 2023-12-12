part of 'single_products_bloc.dart';

@freezed
class SingleProductsState with _$SingleProductsState {
  const factory SingleProductsState.initial() = _Initial;
  const factory SingleProductsState.isLoading() = SingleProductsIsLoading;
  const factory SingleProductsState.isLoaded(
      {required ModelsSingleProducts singleProducts}) = SingleProductsIsLoaded;
}
