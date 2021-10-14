// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return Launch(
    id: json['id'] as String,
    url: json['url'] as String,
    slug: json['slug'] as String,
    name: json['name'] as String,
    status: Status.fromJson(json['status'] as Map<String, dynamic>),
    lastUpdated: json['lastUpdated'] as String?,
    net: json['net'] as String,
    windowEnd: json['windowEnd'] as String?,
    windowStart: json['windowStart'] as String?,
    probability: json['probability'] as String?,
    holdreason: json['holdreason'] as String?,
    failreason: json['failreason'] as String?,
    hashtag: json['hashtag'] as String?,
    launchServiceProvider: json['launchServiceProvider'] == null
        ? null
        : LaunchServiceProvider.fromJson(
            json['launchServiceProvider'] as Map<String, dynamic>),
    rocket: Rocket.fromJson(json['rocket'] as Map<String, dynamic>),
    mission: Mission.fromJson(json['mission'] as Map<String, dynamic>),
    pad: Pad.fromJson(json['pad'] as Map<String, dynamic>),
    webcastLive: json['webcastLive'] as bool?,
    image: json['image'] as String?,
    infographic: json['infographic'] as String?,
    program: (json['program'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$LaunchToJson(Launch instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'slug': instance.slug,
      'name': instance.name,
      'status': instance.status,
      'lastUpdated': instance.lastUpdated,
      'net': instance.net,
      'windowEnd': instance.windowEnd,
      'windowStart': instance.windowStart,
      'probability': instance.probability,
      'holdreason': instance.holdreason,
      'failreason': instance.failreason,
      'hashtag': instance.hashtag,
      'launchServiceProvider': instance.launchServiceProvider,
      'rocket': instance.rocket,
      'mission': instance.mission,
      'pad': instance.pad,
      'webcastLive': instance.webcastLive,
      'image': instance.image,
      'infographic': instance.infographic,
      'program': instance.program,
    };
