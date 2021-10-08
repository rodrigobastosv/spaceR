import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../repository/launch_repository.dart';

part 'launch_event.dart';
part 'launch_state.dart';

class LaunchBloc extends Bloc<LaunchEvent, LaunchState> {
  LaunchBloc({
    required LaunchRepository launchRepository,
  })  : _launchRepository = launchRepository,
        super(LaunchInitial()) {
    on<LaunchGetAll>(_getAllLaunchs);
  }

  final LaunchRepository _launchRepository;

  Future<void> _getAllLaunchs(handler, emit) async {
    emit(LaunchFetchLoading());

    try {
      final launchs = await _launchRepository.fetchLaunchs();
      emit(LaunchFetchSuccess(launchs));
    } on Exception catch (e) {
      emit(LaunchFetchFailed(e.toString()));
    }
  }
}
