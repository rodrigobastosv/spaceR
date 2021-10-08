import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'configuration.g.dart';

@JsonSerializable()
class Configuration extends Equatable {
  const Configuration({
    required this.id,
    required this.url,
    required this.name,
    required this.family,
    required this.fullName,
    required this.variant,
  });

  final int id;
  final String url;
  final String name;
  final String family;
  final String? fullName;
  final String variant;

  factory Configuration.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigurationToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
