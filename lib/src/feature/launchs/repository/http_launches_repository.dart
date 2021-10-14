import 'package:dio/dio.dart';

import '../../../core/core.dart';

import 'launches_repository.dart';

class HttpLaunchesRepository implements LaunchesRepository {
  HttpLaunchesRepository(this.client);

  final Dio client;

  @override
  Future<List<Launch>> fetchLaunchs() async {
    try {
      final response = await client.get(LAUNCH_UPCOMING);
      if (response.statusCode == HTTP_OK) {
        final data = response.data['results'] as List;
        return List.generate(
          data.length,
          (i) => Launch.fromJson(data[i] as Map<String, dynamic>),
        );
      }
      return [];
    } on Exception {
      rethrow;
    }
  }
}
