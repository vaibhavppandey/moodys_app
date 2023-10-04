import 'package:moodys_app/src/feature/cart/model/restaurant.dart';

class CartRepository {
  final List<Restaurant> _cartItems = [];

  List<Restaurant> get getCartItems => _cartItems;

  void addToCart(Restaurant item) {
    bool restaurantNotAdded = true;
    for (Restaurant curItem in _cartItems) {
      if (item.id == curItem.id) {
        restaurantNotAdded = false;
        break;
      }
    }
    if (restaurantNotAdded) {
      _cartItems.add(item);
    }
  }

  void removeFromCart(Restaurant item) {
    _cartItems.remove(item);
  }

  void emptyCart() {
    _cartItems.clear();
  }
}
