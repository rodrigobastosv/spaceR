import 'package:flutter/material.dart';

import '../util/screen_util.dart';

class SRAdaptativeWidget extends StatelessWidget {
  const SRAdaptativeWidget({
    Key? key,
    required this.desktopWidget,
    required this.mobileWidget,
  }) : super(key: key);

  final Widget desktopWidget;
  final Widget mobileWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= kDesktopWidthBreakPoint) {
          return desktopWidget;
        }
        return mobileWidget;
      },
    );
  }
}
