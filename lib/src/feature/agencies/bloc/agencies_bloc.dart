import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/core.dart';
import '../../feature.dart';

part 'agencies_event.dart';
part 'agencies_state.dart';

class AgenciesBloc extends Bloc<AgenciesEvent, AgenciesState> {
  AgenciesBloc({
    required AgenciesRepository agenciesRepository,
  })  : _agenciesRepository = agenciesRepository,
        super(AgenciesInitial()) {
    on<AgenciesGetAll>(_getAllAgencies);
  }

  final AgenciesRepository _agenciesRepository;

  Future<void> _getAllAgencies(handler, emit) async {
    emit(AgenciesFetchLoading());

    try {
      final launchs = await _agenciesRepository.fetchAgencies();
      emit(AgenciesFetchSuccess(launchs));
    } on Exception catch (e) {
      emit(AgenciesFetchFailed(e.toString()));
    }
  }
}
