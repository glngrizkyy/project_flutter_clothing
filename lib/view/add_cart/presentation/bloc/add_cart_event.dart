part of 'add_cart_bloc.dart';

@freezed
class AddCartEvent with _$AddCartEvent {
  const factory AddCartEvent.addCart({dynamic productId}) = _Started;
}
