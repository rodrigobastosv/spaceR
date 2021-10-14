import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../ui/component/component.dart';
import '../launchs.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LaunchesBloc>(
      create: (_) => LaunchesBloc(
        launchesRepository: context.read<LaunchesRepository>(),
      )..add(LaunchesGetAll()),
      child: Scaffold(
        body: BlocBuilder<LaunchesBloc, LaunchesState>(
          builder: (_, state) {
            if (state is LaunchesFetchSuccess) {
              final launchs = state.launchs;
              return ListView.builder(
                itemBuilder: (_, i) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: LaunchCard(launch: launchs[i]),
                ),
                itemCount: launchs.length,
              );
            } else if (state is LaunchesFetchLoading) {
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
