import 'package:thale_task_app/src/constant/api.dart' as constants;
import 'package:logger/logger.dart';

final _logger = Logger();

class YelpFusionApi {
  final String baseUrl = constants.baseUrl;
  final String apiKey = constants.apiKey;

  Map<String, dynamic> get headers => {'Authorization': 'Bearer $apiKey'};

  Uri searchRestaurants(String term, {int limit = 10}) {
    Uri uri = Uri.https(
      baseUrl,
      '/v3/businesses/search',
      {'term': term, 'location': 'us', 'limit': limit.toString()},
    );
    _logger.d(uri);
    return uri;
  }
}
