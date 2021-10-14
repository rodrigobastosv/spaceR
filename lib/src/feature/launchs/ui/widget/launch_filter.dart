import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../ui/component/component.dart';
import '../../launchs.dart';

class LaunchFilter extends StatelessWidget {
  const LaunchFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocProvider<LaunchesFilterBloc>(
      create: (_) => LaunchesFilterBloc(),
      child: BlocBuilder<LaunchesFilterBloc, LaunchesFilterState>(
        key: UniqueKey(),
        builder: (context, state) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: Theme.of(context).colorScheme.primary,
          height: state.isExpanded ? 400 : 60,
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              SRToggleFiltersButton(
                onPressed: () => context.read<LaunchesFilterBloc>().add(
                      LaunchesFilterExpandFilter(),
                    ),
              ),
              if (state.isExpanded)
                Wrap(
                  children: [
                    SizedBox(
                      width: width / 3 - 4,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name Search',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          hintText: 'Name Search',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      width: width / 3 - 4,
                      child: TextFormField(),
                    ),
                    const SizedBox(width: 4),
                    SizedBox(
                      width: width / 3 - 4,
                      child: TextFormField(),
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
