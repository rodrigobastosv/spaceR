import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orbit.g.dart';

@JsonSerializable()
class Orbit extends Equatable {
  const Orbit({
    required this.id,
    required this.name,
    required this.abbrev,
  });

  final int id;
  final String name;
  final String abbrev;

  factory Orbit.fromJson(Map<String, dynamic> json) =>
      _$OrbitFromJson(json);

  Map<String, dynamic> toJson() => _$OrbitToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
