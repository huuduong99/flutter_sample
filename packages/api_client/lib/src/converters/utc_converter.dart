import 'package:freezed_annotation/freezed_annotation.dart';

/// APP TIME: LOCAL
/// SERVER TIME: UTC
/// The converter to convert from UTC to LOCAL when get from api
/// and and vice versa
class UtcConverter implements JsonConverter<DateTime, String> {
  /// Constructor
  const UtcConverter({this.allowDateGreaterNow = false});

  /// Constructor allow input date greater now
  const UtcConverter.allowDateGreaterNow() : this(allowDateGreaterNow: true);

  /// allow input date greater now
  final bool allowDateGreaterNow;

  /// SERVER: utc -> APP: local
  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  /// APP: local -> SERVER: utc
  @override
  String toJson(DateTime date) {
    late final DateTime dateTime;
    final DateTime now = DateTime.now();

    if (date.isAfter(now) && !allowDateGreaterNow) {
      dateTime = now;
    } else {
      dateTime = date;
    }
    return dateTime.toUtc().toIso8601String();
  }
}

/// Using for Query param of Retrofit
extension UtcDatetimeExtensions on DateTime {
  /// Convert LOCAL time to UTC time
  String toJson() {
    late final DateTime dateTime;
    final DateTime now = DateTime.now();

    if (isAfter(now)) {
      dateTime = now;
    } else {
      dateTime = this;
    }
    return dateTime.toUtc().toIso8601String();
  }
}
