import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../ui.dart';

class LaunchesGridView extends StatelessWidget {
  const LaunchesGridView({
    Key? key,
    required this.launches,
  }) : super(key: key);

  final List<Launch> launches;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (_, i) => Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          height: 510,
          child: LaunchCard(launch: launches[i]),
        ),
      ),
      itemCount: launches.length,
    );
  }
}
