import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../launch.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LaunchBloc, LaunchState>(
        builder: (_, state) {
          if (state is LaunchFetchSuccess) {
            return const Text('Deu bom');
          } else if (state is LaunchFetchLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Text('Deu ruim');
          }
        },
      ),
    );
  }
}
