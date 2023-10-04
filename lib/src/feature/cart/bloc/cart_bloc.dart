import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:moodys_app/src/feature/cart/repository/cart.dart';
import 'package:moodys_app/src/feature/cart/model/restaurant.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository cartRepository = CartRepository();
  CartBloc() : super(CartInitial()) {
    on<AddToCartEvent>(addToCart);
    on<RemoveFromCartEvent>(removeFromCart);
    on<EmptyCartEvent>(emptyCart);
  }
  FutureOr<void> addToCart(
      AddToCartEvent event, Emitter<CartState> emit) async {
    emit(CartLoadingState());
    await Future.delayed(const Duration(milliseconds: 200));
    cartRepository.addToCart(event.item);
    emit(CartLoadedState(items: cartRepository.getCartItems));
  }

  FutureOr<void> removeFromCart(
      RemoveFromCartEvent event, Emitter<CartState> emit) async {
    emit(CartLoadingState());
    await Future.delayed(const Duration(milliseconds: 200));
    cartRepository.removeFromCart(event.item);
    emit(CartLoadedState(items: cartRepository.getCartItems));
  }

  FutureOr<void> emptyCart(
      EmptyCartEvent event, Emitter<CartState> emit) async {
    emit(CartLoadingState());
    await Future.delayed(const Duration(milliseconds: 200));
    cartRepository.emptyCart();
    emit(CartInitial());
  }
}
