part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class AddToCartEvent extends CartEvent {
  final Restaurant item;

  AddToCartEvent({required this.item});
}

class RemoveFromCartEvent extends CartEvent {
  final Restaurant item;
  RemoveFromCartEvent({required this.item});
}

class EmptyCartEvent extends CartEvent {}
