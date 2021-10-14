import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'launches_filter_event.dart';
part 'launches_filter_state.dart';

class LaunchesFilterBloc
    extends Bloc<LaunchesFilterEvent, LaunchesFilterState> {
  LaunchesFilterBloc() : super(const LaunchesFilterInitial()) {
    on<LaunchesFilterExpandFilter>(_expandFilter);
  }

  Future<void> _expandFilter(LaunchesFilterExpandFilter event, emit) async {
    final isExpanded = state.isExpanded;

    if (isExpanded) {
      emit(const LaunchesFilterColapsed());
    } else {
      emit(const LaunchesFilterExpanded());
    }
  }
}
