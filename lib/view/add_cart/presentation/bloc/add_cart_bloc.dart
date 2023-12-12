// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../repository/repository_add_cart.dart';

part 'add_cart_event.dart';
part 'add_cart_state.dart';
part 'add_cart_bloc.freezed.dart';

@injectable
class AddCartBloc extends Bloc<AddCartEvent, AddCartState> {
  RepositoryAddCart addCart;
  AddCartBloc(this.addCart) : super(const Initial()) {
    on<AddCartEvent>((event, emit) async {
      emit(const AddCartState.inProgress());
      final response = await addCart.addCart(productId: event.productId);
      await response.fold(
        (l) {
          emit(AddCartState.failed(message: l));
        },
        (r) async {
          emit(const AddCartState.success());
        },
      );
    });
  }
}
