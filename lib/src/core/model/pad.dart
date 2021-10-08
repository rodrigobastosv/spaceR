import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../core.dart';

part 'pad.g.dart';

@JsonSerializable()
class Pad extends Equatable {
  const Pad({
    required this.id,
    required this.url,
    required this.agencyId,
    required this.name,
    required this.infoUrl,
    required this.wikiUrl,
    required this.mapUrl,
    required this.latitude,
    required this.longitude,
    required this.location,
    required this.mapImage,
    required this.totalLaunchCount,
  });

  final int id;
  final String url;
  final int? agencyId;
  final String name;
  final String? infoUrl;
  final String? wikiUrl;
  final String? mapUrl;
  final String latitude;
  final String longitude;
  final Location location;
  final String mapImage;
  final int totalLaunchCount;

  factory Pad.fromJson(Map<String, dynamic> json) =>
      _$PadFromJson(json);

  Map<String, dynamic> toJson() => _$PadToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
