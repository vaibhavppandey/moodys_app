import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:thale_task_app/src/feature/cart/bloc/cart_bloc.dart';
import 'package:thale_task_app/src/feature/cart/presentation/components/cart_item_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        actions: <IconButton>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () =>
                BlocProvider.of<CartBloc>(context).add(EmptyCartEvent()),
          )
        ],
      ),
      body: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartLoadingState:
              return const Center(
                  child: SizedBox.square(
                      dimension: 48, child: CircularProgressIndicator()));
            case CartLoadedState:
              final loadedState = state as CartLoadedState;
              return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: ListView.separated(
                      itemCount: loadedState.items.length,
                      separatorBuilder: (context, _) => const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 2.0, horizontal: 24.0),
                            child: Divider(),
                          ),
                      itemBuilder: (context, index) {
                        return CarrtItemCard(
                            restaurant: loadedState.items[index]);
                      }));
            case CartInitial:
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.shopping_cart_rounded, size: 72),
                    Text("Cart is empty",
                        style: Theme.of(context).textTheme.headlineLarge),
                  ],
                ),
              );

            default:
              return Center(
                child: Text("Not decided yet",
                    style: Theme.of(context).textTheme.headlineLarge),
              );
          }
        },
      ),
    );
  }
}
