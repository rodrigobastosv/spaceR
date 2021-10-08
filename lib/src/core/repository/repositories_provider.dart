import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/features.dart';
import '../core.dart';

final repositoriesProviders = [
  RepositoryProvider<LaunchRepository>(
    create: (_) => HttpLaunchRepository(getDefaultClient()),
  ),
];
