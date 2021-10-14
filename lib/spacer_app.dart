import 'package:flutter/material.dart';

import 'src/core/routing/routing.dart';
import 'src/ui/ui.dart';

class SpaceRApp extends StatelessWidget {
  const SpaceRApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'spaceR',
      debugShowCheckedModeBanner: false,
      theme: theme,
      onGenerateRoute: SRRouter.generateRoutes,
      initialRoute: MAIN_PAGE,
    );
  }
}
