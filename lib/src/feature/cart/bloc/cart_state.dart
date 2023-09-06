part of "cart_bloc.dart";

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoadingState extends CartState {}

class CartLoadedState extends CartState {
  final List<Restaurant> items;
  CartLoadedState({required this.items});
}

class CartErrorState extends CartState {}
