import 'package:flutter/material.dart';

class SRScaffold extends StatelessWidget {
  const SRScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(child: body),
    );
  }
}
