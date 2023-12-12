part of 'single_products_bloc.dart';

@freezed
class SingleProductsEvent with _$SingleProductsEvent {
  const factory SingleProductsEvent.getProductsSingle(int idProducts) =
      _Started;
}
