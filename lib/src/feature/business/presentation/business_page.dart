import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:thale_task_app/src/feature/business/presentation/component/business_card.dart';
import 'package:thale_task_app/src/feature/business/bloc/business_bloc.dart';
import 'package:thale_task_app/src/feature/cart/bloc/cart_bloc.dart';

import 'package:thale_task_app/src/feature/cart/model/restaurant.dart';

class BusinessesPage extends StatefulWidget {
  const BusinessesPage({super.key});
  @override
  State<BusinessesPage> createState() => _BusinessesPageState();
}

class _BusinessesPageState extends State<BusinessesPage> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    BlocProvider.of<BusinessesBloc>(context).add(BusinessesInitialFetchEvent());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Moodys",
        style: Theme.of(context).textTheme.headlineMedium,
      )),
      body: BlocConsumer<BusinessesBloc, BusinessState>(
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case BusinessFetchingLoadingState:
              return const Center(
                  child: SizedBox.square(
                      dimension: 48, child: CircularProgressIndicator()));
            case BusinessFetchingSuccessfulState:
              final successfulState = state as BusinessFetchingSuccessfulState;
              return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 1.0),
                      child: SizedBox(
                        height: 48,
                        child: TextField(
                          textInputAction: TextInputAction.go,
                          controller: _controller,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Search business"),
                          onSubmitted: (String value) {
                            BlocProvider.of<BusinessesBloc>(context)
                                .add(BusinessRefreshEvent(term: value));
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: ListView.separated(
                        itemCount: successfulState.businesses.length,
                        separatorBuilder: (context, _) => const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 24.0),
                              child: Divider(),
                            ),
                        itemBuilder: (context, index) {
                          return RestrauntBusinessCard(
                            businessModel: successfulState.businesses[index],
                            cartAction: () => BlocProvider.of<CartBloc>(context)
                                .add(AddToCartEvent(
                                    item: Restaurant.fromBusiness(
                                        successfulState.businesses[index]))),
                          );
                        }),
                  )
                ]),
              );
            default:
              return const Center(child: Text("Something went wrong"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/cart'),
        child: const Icon(Icons.shopping_cart_checkout_rounded),
      ),
    );
  }
}
