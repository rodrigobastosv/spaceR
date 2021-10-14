part of 'launches_bloc.dart';

abstract class LaunchesState extends Equatable {
  const LaunchesState();

  @override
  List<Object> get props => [];
}

class LaunchesInitial extends LaunchesState {}

class LaunchesFetchSuccess extends LaunchesState {
  const LaunchesFetchSuccess(this.launchs);

  final List<Launch> launchs;

  @override
  List<Object> get props => [
    launchs,
  ];
}

class LaunchesFetchFailed extends LaunchesState {
  const LaunchesFetchFailed(this.errorMessage);

  final String errorMessage;

  @override
  List<Object> get props => [
    errorMessage,
  ];
}

class LaunchesFetchLoading extends LaunchesState {}
