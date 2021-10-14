import 'package:flutter/material.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

import '../util/util.dart';
import '../../../../ui/ui.dart';
import '../../../../core/core.dart';

class LaunchCard extends StatelessWidget {
  const LaunchCard({
    Key? key,
    required this.launch,
  }) : super(key: key);

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            foregroundDecoration: RotatedCornerDecoration(
              color: getColorByStatusName(launch.status.name),
              geometry: const BadgeGeometry(
                width: 62,
                height: 60,
                alignment: BadgeAlignment.topLeft,
              ),
              textSpan: TextSpan(
                text: launch.status.abbrev,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                    ),
              ),
              labelInsets: const LabelInsets(baselineShift: 3, start: 1),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                launch.image!,
                loadingBuilder: getDefaultImageLoadingBuilder(
                  height: 200,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              launch.status.description,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                launch.name,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
              left: 8,
              right: 8,
              bottom: 16,
            ),
            child: Text(
              launch.mission.description,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    height: 1.3,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
