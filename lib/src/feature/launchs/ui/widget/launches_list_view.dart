import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../ui.dart';

class LaunchesListView extends StatelessWidget {
  const LaunchesListView({
    Key? key,
    required this.launches,
  }) : super(key: key);

  final List<Launch> launches;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.all(8),
        child: LaunchCard(launch: launches[i]),
      ),
      itemCount: launches.length,
    );
  }
}
