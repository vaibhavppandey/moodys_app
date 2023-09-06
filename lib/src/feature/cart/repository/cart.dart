import 'package:thale_task_app/src/feature/cart/model/restaurant.dart';

class CartRepository {
  final List<Restaurant> _cartItems = [];

  List<Restaurant> get getCartItems => _cartItems;

  void addToCart(Restaurant item) {
    _cartItems.add(item);
  }

  void removeFromCart(Restaurant item) {
    _cartItems.remove(item);
  }

  void emptyCart() {
    _cartItems.clear();
  }
}
