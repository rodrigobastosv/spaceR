// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return Mission(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    launchDesignator: json['launchDesignator'] as String?,
    type: json['type'] as String,
    orbit: Orbit.fromJson(json['orbit'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MissionToJson(Mission instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'launchDesignator': instance.launchDesignator,
      'type': instance.type,
      'orbit': instance.orbit,
    };
