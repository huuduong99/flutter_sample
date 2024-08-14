import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.g.dart';
part 'token.freezed.dart';

/// Token authorization
@Freezed(fromJson: true)
class Token with _$Token {
  ///
  const factory Token({
    required String accessToken,
    String? refreshToken,

    /// Example 'Bearer
    String? tokenType,

    /// Seconds
    int? expiresIn,
  }) = _Token;

  ///
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
