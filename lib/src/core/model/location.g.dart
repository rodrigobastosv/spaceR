// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    id: json['id'] as int,
    url: json['url'] as String,
    name: json['name'] as String,
    countryCode: json['countryCode'] as String?,
    mapImage: json['mapImage'] as String,
    totalLaunchCount: json['totalLaunchCount'] as int,
    totalLandingCount: json['totalLandingCount'] as int,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'countryCode': instance.countryCode,
      'mapImage': instance.mapImage,
      'totalLaunchCount': instance.totalLaunchCount,
      'totalLandingCount': instance.totalLandingCount,
    };
