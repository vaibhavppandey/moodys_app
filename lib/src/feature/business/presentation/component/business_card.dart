import 'package:flutter/material.dart';
import 'package:thale_task_app/src/feature/business/model/business.dart';

class RestrauntBusinessCard extends StatefulWidget {
  final Business businessModel;
  const RestrauntBusinessCard({super.key, required this.businessModel});

  @override
  State<RestrauntBusinessCard> createState() => RestrauntBusinessCardState();
}

class RestrauntBusinessCardState extends State<RestrauntBusinessCard> {
  @override
  Widget build(BuildContext context) {
    final Business businessModel = widget.businessModel;
    return SizedBox(
      height: 350,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: Image.network(businessModel.imageUrl, fit: BoxFit.cover),
            ),
            Text(
              businessModel.name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Expanded(
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      businessModel.phone,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      businessModel.id,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
