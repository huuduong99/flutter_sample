// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      imagePath: json['imagePath'] as String?,
      price: json['price'] as String?,
      photographer: json['photographer'] as String?,
      name: json['name'] as String?,
      details: json['details'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagePath': instance.imagePath,
      'price': instance.price,
      'photographer': instance.photographer,
      'name': instance.name,
      'details': instance.details,
    };
