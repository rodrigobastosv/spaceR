import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
      builder: (_, state) => Scaffold(
        bottomNavigationBar: ConvexAppBar(
          style: TabStyle.reactCircle,
          backgroundColor: Theme.of(context).colorScheme.primary,
          activeColor: Theme.of(context).colorScheme.primaryVariant,
          items: const [
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
              title: 'Astronauts',
            ),
            TabItem(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/expeditions.jpg'),
              ),
              title: 'Expeditions',
            ),
          ],
          initialActiveIndex: 2,
          onTap: (index) => context.read<MainBloc>().add(
                MainChangeDestination(index),
              ),
        ),
        body: Container(
          color: state.destinationIndex == 0 ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
