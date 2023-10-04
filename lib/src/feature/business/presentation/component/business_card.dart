import 'package:flutter/material.dart';
import 'package:moodys_app/src/feature/business/model/business.dart';

class RestrauntBusinessCard extends StatefulWidget {
  final Business businessModel;
  final VoidCallback cartAction;
  const RestrauntBusinessCard(
      {super.key, required this.businessModel, required this.cartAction});

  @override
  State<RestrauntBusinessCard> createState() => RestrauntBusinessCardState();
}

class RestrauntBusinessCardState extends State<RestrauntBusinessCard> {
  @override
  Widget build(BuildContext context) {
    final Business businessModel = widget.businessModel;
    return SizedBox(
      height: 370,
      child: Card(
        // elevation: 0,
        // color: Theme.of(context).colorScheme.surfaceVariant,
        child: Padding(
          padding: const EdgeInsets.only(
              right: 16.0, top: 16.0, left: 16.0, bottom: 8.0),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.topRight,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 256,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Image.network(businessModel.imageUrl, loadingBuilder:
                        (BuildContext context, Widget child,
                            ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    }, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    businessModel.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 4.0),
                  Expanded(
                    child: Text(
                      [
                        businessModel.phone.isEmpty
                            ? "None"
                            : businessModel.phone,
                        "Visit"
                      ].join(" • "),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.topRight,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.center,
                      colors: [
                        Theme.of(context)
                            .colorScheme
                            .surfaceVariant
                            .withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(12)),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add_shopping_cart_rounded),
                    iconSize: 32,
                    onPressed: widget.cartAction,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
