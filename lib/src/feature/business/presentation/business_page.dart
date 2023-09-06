import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BusinessesBloc>(context).add(BusinessesInitialFetchEvent());
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
                      }));
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
