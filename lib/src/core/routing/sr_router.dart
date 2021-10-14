import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/feature.dart';
import '../core.dart';

import 'route_names.dart';

class SRRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final routeName = settings.name;

    late Widget routeWidget;
    switch (routeName) {
      case MAIN_PAGE:
        routeWidget = BlocProvider<MainBloc>(
          create: (_) => MainBloc(),
          child: const MainPage(),
        );
        break;
      default:
        routeWidget = const Scaffold();
    }

    return isAndroid()
        ? MaterialPageRoute(
            builder: (context) => routeWidget,
            settings: settings,
          )
        : CupertinoPageRoute(
            builder: (context) => routeWidget,
            settings: settings,
          );
  }
}
