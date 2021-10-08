part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState(this.destinationIndex);

  final int destinationIndex;

  @override
  List<Object> get props => [
        destinationIndex,
      ];
}

class MainInitial extends MainState {
  const MainInitial() : super(0);
}

class MainDestinationChanged extends MainState {
  const MainDestinationChanged(int newDestinationIndex)
      : super(newDestinationIndex);
}
