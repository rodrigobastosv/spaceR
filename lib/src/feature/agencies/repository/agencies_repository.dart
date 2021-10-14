import '../../../core/core.dart';

abstract class AgenciesRepository {
  Future<List<Agency>> fetchAgencies();
}
