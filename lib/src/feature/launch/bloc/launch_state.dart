part of 'launch_bloc.dart';

abstract class LaunchState extends Equatable {
  const LaunchState();

  @override
  List<Object> get props => [];
}

class LaunchInitial extends LaunchState {}

class LaunchFetchSuccess extends LaunchState {
  const LaunchFetchSuccess(this.launchs);

  final List<Launch> launchs;

  @override
  List<Object> get props => [
    launchs,
  ];
}

class LaunchFetchFailed extends LaunchState {
  const LaunchFetchFailed(this.errorMessage);

  final String errorMessage;

  @override
  List<Object> get props => [
    errorMessage,
  ];
}

class LaunchFetchLoading extends LaunchState {}
