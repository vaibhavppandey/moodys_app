import 'package:flutter_dotenv/flutter_dotenv.dart';

const String baseUrl = "api.yelp.com";
final apiKey = dotenv.env['YELP_API_KEY']!;
