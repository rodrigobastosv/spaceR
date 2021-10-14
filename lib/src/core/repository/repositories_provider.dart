import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/feature.dart';
import '../core.dart';

final repositoriesProviders = [
  RepositoryProvider<LaunchesRepository>(
    create: (_) => HttpLaunchesRepository(getDefaultClient()),
  ),
  RepositoryProvider<AgenciesRepository>(
    create: (_) => HttpAgenciesRepository(getDefaultClient()),
  ),
];
