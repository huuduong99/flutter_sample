// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$AppNotificationImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      body: json['body'] as String?,
      title: json['title'] as String?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AppNotificationImplToJson(
        _$AppNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'body': instance.body,
      'title': instance.title,
      'creationTime': instance.creationTime?.toIso8601String(),
      'userId': instance.userId,
    };
