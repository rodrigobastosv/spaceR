import 'package:dio/dio.dart';

import '../../../core/core.dart';
import 'repository.dart';

class HttpAgenciesRepository implements AgenciesRepository {
  HttpAgenciesRepository(this.client);

  final Dio client;

  @override
  Future<List<Agency>> fetchAgencies() async {
    try {
      final response = await client.get(AGENCIES);
      if (response.statusCode == HTTP_OK) {
        final data = response.data['results'] as List;
        return List.generate(
          data.length,
          (i) => Agency.fromJson(data[i] as Map<String, dynamic>),
        );
      }
      return [];
    } on Exception {
      rethrow;
    }
  }
}
