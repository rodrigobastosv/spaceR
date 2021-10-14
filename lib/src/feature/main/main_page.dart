import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/core.dart';
import '../feature.dart';
import 'widget/widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (_, state) {
        if (state is MainDestinationChanged && !isPlatformMobile()) {
          Navigator.of(context).pop();
        }
      },
      builder: (_, state) => Scaffold(
        appBar: isPlatformMobile() ? null : AppBar(),
        drawer: isPlatformMobile() ? null : const SRDrawer(),
        bottomNavigationBar: isPlatformMobile() ? const SRBottomBar() : null,
        body: _getPageByIndex(state.destinationIndex),
      ),
    );
  }

  Widget _getPageByIndex(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const LaunchPage();
      case 2:
        return const AgenciesPage();
      case 3:
        return Container(
          color: Colors.yellow,
        );
      case 4:
        return Container(
          color: Colors.red,
        );
      case 5:
        return Container(
          color: Colors.cyanAccent,
        );
      default:
        return Container(
          color: Colors.cyanAccent,
        );
    }
  }
}
