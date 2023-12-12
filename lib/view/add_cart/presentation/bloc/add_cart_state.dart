part of 'add_cart_bloc.dart';

@freezed
class AddCartState with _$AddCartState {
  const factory AddCartState.initial() = Initial;
  const factory AddCartState.inProgress() = AddCartInProgress;
  const factory AddCartState.success() = AddCartSuccess;
  const factory AddCartState.failed({required String message}) = AddCartFailed;
}
