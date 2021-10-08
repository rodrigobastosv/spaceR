import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'spacer_app.dart';
import 'src/core/core.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositoriesProviders,
      child: const SpaceRApp(),
    );
  }
}
