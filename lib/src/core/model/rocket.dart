import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core.dart';

part 'rocket.g.dart';

@JsonSerializable()
class Rocket extends Equatable {
  const Rocket({
    required this.id,
    required this.configuration,
  });

  final int id;
  final Configuration configuration;

  factory Rocket.fromJson(Map<String, dynamic> json) =>
      _$RocketFromJson(json);

  Map<String, dynamic> toJson() => _$RocketToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
