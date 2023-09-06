import 'package:thale_task_app/src/feature/business/model/business.dart';

class Restaurant {
  final String id;
  final String name;
  final String phone;
  final String imageUrl;

  const Restaurant({
    required this.id,
    required this.name,
    required this.phone,
    required this.imageUrl,
  });

  factory Restaurant.fromBusiness(Business business) {
    return Restaurant(
      id: business.id,
      name: business.name,
      phone: business.phone,
      imageUrl: business.imageUrl,
    );
  }
}
