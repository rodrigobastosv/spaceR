import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core.dart';

part 'mission.g.dart';

@JsonSerializable()
class Mission extends Equatable {
  const Mission({
    required this.id,
    required this.name,
    required this.description,
    required this.launchDesignator,
    required this.type,
    required this.orbit,
  });

  final int id;
  final String name;
  final String description;
  final String? launchDesignator;
  final String type;
  final Orbit orbit;

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
