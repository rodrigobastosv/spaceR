import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core.dart';

part 'launch.g.dart';

@JsonSerializable()
class Launch extends Equatable {

  const Launch({
    required this.id,
    required this.url,
    required this.slug,
    required this.name,
    required this.status,
    required this.lastUpdated,
    required this.net,
    required this.windowEnd,
    required this.windowStart,
    required this.probability,
    required this.holdreason,
    required this.failreason,
    required this.hashtag,
    required this.launchServiceProvider,
    required this.rocket,
    required this.mission,
    required this.pad,
    required this.webcastLive,
    required this.image,
    required this.infographic,
    required this.program,
  });

  final String id;
  final String url;
  final String slug;
  final String name;
  final Status status;
  final String? lastUpdated;
  final String net;
  final String? windowEnd;
  final String? windowStart;
  final String? probability;
  final String? holdreason;
  final String? failreason;
  final String? hashtag;
  final LaunchServiceProvider? launchServiceProvider;
  final Rocket rocket;
  final Mission mission;
  final Pad pad;
  final bool? webcastLive;
  final String? image;
  final String? infographic;
  final List<Map<String, dynamic>>? program;

  factory Launch.fromJson(Map<String, dynamic> json) =>
      _$LaunchFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}