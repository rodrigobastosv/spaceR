// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return Rocket(
    id: json['id'] as int,
    configuration:
        Configuration.fromJson(json['configuration'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RocketToJson(Rocket instance) => <String, dynamic>{
      'id': instance.id,
      'configuration': instance.configuration,
    };
