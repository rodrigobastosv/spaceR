import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SRLoadingIndicator extends StatelessWidget {
  const SRLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitSpinningLines(
      color: Theme.of(context).primaryColor,
      size: 86,
    );
  }
}
