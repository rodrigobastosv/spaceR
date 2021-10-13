import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/core.dart';
import '../features.dart';
import 'widget/widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (_, state) {
        if (state is MainDestinationChanged) {
          Navigator.of(context).pop();
        }
      },
      builder: (_, state) => Scaffold(
        appBar: isMobile() ? null : AppBar(),
        drawer: isMobile() ? null : const SDrawer(),
        bottomNavigationBar: isMobile() ? const SBottomBar() : null,
        body: Container(
          color: state.destinationIndex == 0 ? Colors.blue : Colors.black,
        ),
      ),
    );
  }
}
