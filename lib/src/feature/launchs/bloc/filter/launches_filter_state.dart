part of 'launches_filter_bloc.dart';

abstract class LaunchesFilterState extends Equatable {
  const LaunchesFilterState({
    required this.isExpanded,
  });

  final bool isExpanded;

  @override
  List<Object> get props => [
    isExpanded,
  ];
}

class LaunchesFilterInitial extends LaunchesFilterState {
  const LaunchesFilterInitial() : super(isExpanded: false);
}

class LaunchesFilterExpanded extends LaunchesFilterState {
  const LaunchesFilterExpanded() : super(isExpanded: true);
}

class LaunchesFilterColapsed extends LaunchesFilterState {
  const LaunchesFilterColapsed() : super(isExpanded: false);
}