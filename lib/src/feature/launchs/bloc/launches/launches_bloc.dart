import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';
import '../../../feature.dart';

part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc({
    required LaunchesRepository launchesRepository,
  })  : _launchesRepository = launchesRepository,
        super(LaunchesInitial()) {
    on<LaunchesGetAll>(_getAllLaunchs);
  }

  final LaunchesRepository _launchesRepository;

  Future<void> _getAllLaunchs(LaunchesGetAll event, emit) async {
    emit(LaunchesFetchLoading());

    try {
      final launchs = await _launchesRepository.fetchLaunchs();
      emit(LaunchesFetchSuccess(launchs));
    } on Exception catch (e) {
      emit(LaunchesFetchFailed(e.toString()));
    }
  }
}
