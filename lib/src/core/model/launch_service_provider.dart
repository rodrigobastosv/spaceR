import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launch_service_provider.g.dart';

@JsonSerializable()
class LaunchServiceProvider extends Equatable {
  const LaunchServiceProvider({
    required this.id,
    required this.url,
    required this.name,
    required this.type,
  });

  final int id;
  final String url;
  final String name;
  final String type;

  factory LaunchServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$LaunchServiceProviderFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchServiceProviderToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];
}
