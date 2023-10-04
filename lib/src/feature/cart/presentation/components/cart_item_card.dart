import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moodys_app/src/feature/cart/bloc/cart_bloc.dart';

import 'package:moodys_app/src/feature/cart/model/restaurant.dart';

class CarrtItemCard extends StatelessWidget {
  final Restaurant restaurant;
  const CarrtItemCard({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: double.infinity,
              width: 150,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Image.network(
                restaurant.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    child: Text(
                      restaurant.name,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    restaurant.phone,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_basket_sharp),
                    onPressed: () => BlocProvider.of<CartBloc>(context)
                        .add(RemoveFromCartEvent(item: restaurant)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
