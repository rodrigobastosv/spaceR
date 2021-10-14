import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/launches/launches_bloc.dart';
import '../../../ui/ui.dart';
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
      child: SRScaffold(
        body: BlocBuilder<LaunchesBloc, LaunchesState>(
          builder: (context, state) {
            if (state is LaunchesFetchSuccess) {
              final launches = state.launchs;
              if (isMobile(context)) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const LaunchFilter(),
                    LaunchesListView(launches: launches),
                  ],
                );
              } else {
                return LaunchesGridView(launches: launches);
              }
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
