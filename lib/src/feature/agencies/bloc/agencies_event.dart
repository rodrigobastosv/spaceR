part of 'agencies_bloc.dart';

abstract class AgenciesEvent extends Equatable {
  const AgenciesEvent();

  @override
  List<Object> get props => [];
}

class AgenciesGetAll extends AgenciesEvent {}