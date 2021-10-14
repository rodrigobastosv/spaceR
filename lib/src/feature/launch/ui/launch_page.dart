import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/component/component.dart';
import '../launch.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LaunchBloc>(
      create: (_) => LaunchBloc(
        launchRepository: context.read<LaunchRepository>(),
      )..add(LaunchGetAll()),
      child: Scaffold(
        body: BlocBuilder<LaunchBloc, LaunchState>(
          builder: (_, state) {
            if (state is LaunchFetchSuccess) {
              final launchs = state.launchs;
              return ListView.builder(
                itemBuilder: (_, i) => ListTile(
                  title: Text(launchs[i].name),
                  subtitle: Text(launchs[i].image.toString()),
                ),
                itemCount: launchs.length,
              );
            } else if (state is LaunchFetchLoading) {
              return const SRLoadingIndicator();
            } else {
              return const Text('Deu ruim');
            }
          },
        ),
      ),
    );
  }
}
