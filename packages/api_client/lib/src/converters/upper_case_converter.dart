import 'package:freezed_annotation/freezed_annotation.dart';

///
class UpperCaseConverter implements JsonConverter<String, String> {
  /// Constructor
  const UpperCaseConverter();

  @override
  String fromJson(String json) => json.toUpperCase();

  @override
  String toJson(String text) => text.toUpperCase();
}
