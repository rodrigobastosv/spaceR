// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orbit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Orbit _$OrbitFromJson(Map<String, dynamic> json) {
  return Orbit(
    id: json['id'] as int,
    name: json['name'] as String,
    abbrev: json['abbrev'] as String,
  );
}

Map<String, dynamic> _$OrbitToJson(Orbit instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'abbrev': instance.abbrev,
    };
