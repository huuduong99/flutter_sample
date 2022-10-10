import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_notification.freezed.dart';

part 'app_notification.g.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    int? id,
    String? image,
    String? body,
    String? title,
    DateTime? creationTime,
    int? notifyStatus,
    String? notifyStatusText,
    String? app,
    String? tenantId,
    int? objectId,
    int? notificationType,
    int? parentId,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}
