// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Business _$BusinessFromJson(Map<String, dynamic> json) {
  return _Business.fromJson(json);
}

/// @nodoc
mixin _$Business {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessCopyWith<Business> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessCopyWith<$Res> {
  factory $BusinessCopyWith(Business value, $Res Function(Business) then) =
      _$BusinessCopyWithImpl<$Res, Business>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      @JsonKey(name: 'image_url') String imageUrl,
      String phone});
}

/// @nodoc
class _$BusinessCopyWithImpl<$Res, $Val extends Business>
    implements $BusinessCopyWith<$Res> {
  _$BusinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? imageUrl = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res> implements $BusinessCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      @JsonKey(name: 'image_url') String imageUrl,
      String phone});
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res>
    extends _$BusinessCopyWithImpl<$Res, _$_Business>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? imageUrl = null,
    Object? phone = null,
  }) {
    return _then(_$_Business(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business with DiagnosticableTreeMixin implements _Business {
  const _$_Business(
      {required this.id,
      required this.name,
      required this.url,
      @JsonKey(name: 'image_url') required this.imageUrl,
      required this.phone});

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Business(id: $id, name: $name, url: $url, imageUrl: $imageUrl, phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Business'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, imageUrl, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(
      this,
    );
  }
}

abstract class _Business implements Business {
  const factory _Business(
      {required final String id,
      required final String name,
      required final String url,
      @JsonKey(name: 'image_url') required final String imageUrl,
      required final String phone}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
