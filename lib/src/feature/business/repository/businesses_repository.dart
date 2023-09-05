import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'package:thale_task_app/src/service/yelp_fusion_api.dart';
import 'package:thale_task_app/src/feature/business/model/business.dart';

final YelpFusionApi _api = YelpFusionApi();
final Dio _dio = Dio();
final Logger _logger = Logger();

class BusinessesRepository {
  static Future<List<Business>> getSearchedBusinesses(
      {required String term}) async {
    final response = await _dio.getUri(_api.searchRestaurants(term),
        options: Options(headers: _api.headers));
    List<Business> businesses = [];
    if (response.statusCode == 200) {
      final businessesJson = response.data['businesses'] as List<dynamic>;
      _logger.d(businessesJson.length);
      for (dynamic json in businessesJson) {
        businesses.add(Business.fromJson(json));
      }
    }
    return businesses;
  }
}
