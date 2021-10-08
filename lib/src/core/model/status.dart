import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'status.g.dart';

@JsonSerializable()
class Status extends Equatable {
  const Status({
    required this.id,
    required this.name,
    required this.abbrev,
    required this.description,
  });

  final int id;
  final String name;
  final String abbrev;
  final String description;

  factory Status.fromJson(Map<String, dynamic> json) =>
      _$StatusFromJson(json);

  Map<String, dynamic> toJson() => _$StatusToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
