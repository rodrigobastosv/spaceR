part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class MainChangeDestination extends MainEvent {
  const MainChangeDestination(this.destinationIndex);

  final int destinationIndex;

  @override
  List<Object> get props => [
    destinationIndex,
  ];
}
