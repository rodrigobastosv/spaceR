import '../../../core/core.dart';

abstract class LaunchRepository {
  Future<List<Launch>> fetchLaunchs();
}
