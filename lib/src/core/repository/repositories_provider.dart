import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/feature.dart';
import '../core.dart';

final repositoriesProviders = [
  RepositoryProvider<LaunchRepository>(
    create: (_) => HttpLaunchRepository(getDefaultClient()),
  ),
];
