import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'agency.g.dart';

@JsonSerializable()
class Agency extends Equatable {

  const Agency({
    required this.id,
    required this.url,
    required this.name,
    required this.featured,
    required this.type,
    required this.countryCode,
    required this.abbrev,
    required this.description,
    required this.administrator,
    required this.foundingYear,
    required this.launchers,
    required this.spacecraft,
    required this.imageUrl,
  });

  final String id;
  final String url;
  final String name;
  final bool featured;
  final String type;
  final String countryCode;
  final String abbrev;
  final String description;
  final String? administrator;
  final String foundingYear;
  final String launchers;
  final String spacecraft;
  final String? imageUrl;

  factory Agency.fromJson(Map<String, dynamic> json) =>
      _$AgencyFromJson(json);

  Map<String, dynamic> toJson() => _$AgencyToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}