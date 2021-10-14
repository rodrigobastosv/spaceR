import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends Equatable {
  const Location({
    required this.id,
    required this.url,
    required this.name,
    required this.countryCode,
    required this.mapImage,
    required this.totalLaunchCount,
    required this.totalLandingCount,
  });

  final int id;
  final String url;
  final String name;
  final String? countryCode;
  final String? mapImage;
  final int? totalLaunchCount;
  final int? totalLandingCount;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
