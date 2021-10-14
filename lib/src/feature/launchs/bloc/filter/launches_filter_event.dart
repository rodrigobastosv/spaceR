part of 'launches_filter_bloc.dart';

abstract class LaunchesFilterEvent extends Equatable {
  const LaunchesFilterEvent();

  @override
  List<Object> get props => [];
}

class LaunchesFilterExpandFilter extends LaunchesFilterEvent {}
