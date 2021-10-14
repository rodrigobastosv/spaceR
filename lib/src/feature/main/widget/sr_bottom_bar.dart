import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../main.dart';

class SRBottomBar extends StatelessWidget {
  const SRBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (_, state) => ConvexAppBar(
        style: TabStyle.reactCircle,
        backgroundColor: Theme.of(context).colorScheme.primary,
        activeColor: Theme.of(context).colorScheme.primaryVariant,
        height: 56,
        items: const [
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/spacer.jpg'),
            ),
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/launches.jpg'),
            ),
            title: 'Launches',
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/agencies.jpg'),
            ),
            title: 'Agencies',
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/events.jpg'),
            ),
            title: 'Events',
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/astronauts.jpg'),
            ),
            title: 'Crew',
          ),
          TabItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/images/expeditions.jpg'),
            ),
            title: 'Trips',
          ),
        ],
        initialActiveIndex: state.destinationIndex,
        onTap: (index) => context.read<MainBloc>().add(
              MainChangeDestination(index),
            ),
      ),
    );
  }
}
