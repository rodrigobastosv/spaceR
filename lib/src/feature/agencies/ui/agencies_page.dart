import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature.dart';

class AgenciesPage extends StatelessWidget {
  const AgenciesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AgenciesBloc>(
      create: (_) => AgenciesBloc(
        agenciesRepository: context.read<AgenciesRepository>(),
      ),
      child: Scaffold(
        body: BlocBuilder<AgenciesBloc, AgenciesState>(
          builder: (_, state) {
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
