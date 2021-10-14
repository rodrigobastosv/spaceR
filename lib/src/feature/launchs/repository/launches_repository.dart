import '../../../core/core.dart';

abstract class LaunchesRepository {
  Future<List<Launch>> fetchLaunchs();
}
