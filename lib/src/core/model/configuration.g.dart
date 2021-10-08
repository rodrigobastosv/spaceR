// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromJson(Map<String, dynamic> json) {
  return Configuration(
    id: json['id'] as int,
    url: json['url'] as String,
    name: json['name'] as String,
    family: json['family'] as String,
    fullName: json['fullName'] as String?,
    variant: json['variant'] as String,
  );
}

Map<String, dynamic> _$ConfigurationToJson(Configuration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'family': instance.family,
      'fullName': instance.fullName,
      'variant': instance.variant,
    };
