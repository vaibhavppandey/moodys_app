import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'business.freezed.dart';
part 'business.g.dart';

@freezed
class Business with _$Business {
  const factory Business({
    required String id,
    required String name,
    required String url,
    @JsonKey(name: 'image_url') required String imageUrl,
    required String phone,
  }) = _Business;

  factory Business.fromJson(Map<String, Object?> json) =>
      _$BusinessFromJson(json);
}
