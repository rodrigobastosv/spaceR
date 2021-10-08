import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (_, state) => AdaptiveNavigationScaffold(
        includeBaseDestinationsInMenu: true,
        selectedIndex: state.destinationIndex,
        destinations: const [
          AdaptiveScaffoldDestination(
            title: 'Launchs',
            icon: Icons.launch,
          ),
          AdaptiveScaffoldDestination(
            title: 'Events',
            icon: Icons.event,
          ),
          AdaptiveScaffoldDestination(
            title: 'Agencies',
            icon: Icons.work,
          ),
          AdaptiveScaffoldDestination(
            title: 'Astronauts',
            icon: Icons.space_bar,
          ),
        ],
        onDestinationSelected: (index) => context.read<MainBloc>().add(
              MainChangeDestination(index),
            ),
        body: Container(
          color: state.destinationIndex == 0 ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
