import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature.dart';

class SRDrawer extends StatelessWidget {
  const SRDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Image.asset('assets/images/spacer.jpg'),
          ...ListTile.divideTiles(
            context: context,
            tiles: [
              const _DrawerMenuItem(
                index: 1,
                name: 'Launches',
                assetImage: 'assets/images/launches.jpg',
              ),
              const _DrawerMenuItem(
                index: 2,
                name: 'Agencies',
                assetImage: 'assets/images/agencies.jpg',
              ),
              const _DrawerMenuItem(
                index: 3,
                name: 'Events',
                assetImage: 'assets/images/events.jpg',
              ),
              const _DrawerMenuItem(
                index: 4,
                name: 'Astronauts',
                assetImage: 'assets/images/astronauts.jpg',
              ),
              const _DrawerMenuItem(
                index: 5,
                name: 'Trips',
                assetImage: 'assets/images/expeditions.jpg',
              ),
            ],
          ).toList(),
        ],
      ),
    );
  }
}

class _DrawerMenuItem extends StatelessWidget {
  const _DrawerMenuItem({
    Key? key,
    required this.index,
    required this.name,
    required this.assetImage,
  }) : super(key: key);

  final int index;
  final String name;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.read<MainBloc>().state.destinationIndex == index
          ? Colors.grey[200]
          : Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(assetImage),
        ),
        title: Text(name),
        onTap: () => context.read<MainBloc>().add(
              MainChangeDestination(index),
            ),
      ),
    );
  }
}
