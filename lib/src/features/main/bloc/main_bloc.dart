import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainInitial()) {
    on<MainChangeDestination>(_onChangeDestination);
  }

  void _onChangeDestination(MainChangeDestination event, emit) {
    final newDestinationIndex = event.destinationIndex;
    emit(MainDestinationChanged(newDestinationIndex));
  }
}
