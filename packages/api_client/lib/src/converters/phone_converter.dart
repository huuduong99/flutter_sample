import 'package:freezed_annotation/freezed_annotation.dart';

/// The converter to replace phone (from api) with prefix '+84' to prefix '0'
class PhoneConverter implements JsonConverter<String, String> {
  /// Constructor
  const PhoneConverter();

  @override
  String fromJson(String json) => json.replaceFirst('+84', '0');

  @override
  String toJson(String phone) => phone;
}


