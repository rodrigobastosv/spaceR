// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pad _$PadFromJson(Map<String, dynamic> json) {
  return Pad(
    id: json['id'] as int,
    url: json['url'] as String,
    agencyId: json['agencyId'] as int?,
    name: json['name'] as String,
    infoUrl: json['infoUrl'] as String?,
    wikiUrl: json['wikiUrl'] as String?,
    mapUrl: json['mapUrl'] as String?,
    latitude: json['latitude'] as String,
    longitude: json['longitude'] as String,
    location: Location.fromJson(json['location'] as Map<String, dynamic>),
    mapImage: json['mapImage'] as String,
    totalLaunchCount: json['totalLaunchCount'] as int,
  );
}

Map<String, dynamic> _$PadToJson(Pad instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'agencyId': instance.agencyId,
      'name': instance.name,
      'infoUrl': instance.infoUrl,
      'wikiUrl': instance.wikiUrl,
      'mapUrl': instance.mapUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'location': instance.location,
      'mapImage': instance.mapImage,
      'totalLaunchCount': instance.totalLaunchCount,
    };
