import 'package:flutter/material.dart';

import '../ui.dart';

class SRToggleFiltersButton extends StatelessWidget {
  const SRToggleFiltersButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primarySemiLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      onPressed: onPressed,
      child: const Text('TOGGLE FILTERS'),
    );
  }
}
