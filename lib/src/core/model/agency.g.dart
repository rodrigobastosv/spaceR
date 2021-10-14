// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agency _$AgencyFromJson(Map<String, dynamic> json) {
  return Agency(
    id: json['id'] as String,
    url: json['url'] as String,
    name: json['name'] as String,
    featured: json['featured'] as bool,
    type: json['type'] as String,
    countryCode: json['countryCode'] as String,
    abbrev: json['abbrev'] as String,
    description: json['description'] as String,
    administrator: json['administrator'] as String?,
    foundingYear: json['foundingYear'] as String,
    launchers: json['launchers'] as String,
    spacecraft: json['spacecraft'] as String,
    imageUrl: json['imageUrl'] as String?,
  );
}

Map<String, dynamic> _$AgencyToJson(Agency instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'featured': instance.featured,
      'type': instance.type,
      'countryCode': instance.countryCode,
      'abbrev': instance.abbrev,
      'description': instance.description,
      'administrator': instance.administrator,
      'foundingYear': instance.foundingYear,
      'launchers': instance.launchers,
      'spacecraft': instance.spacecraft,
      'imageUrl': instance.imageUrl,
    };
