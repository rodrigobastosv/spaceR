part of 'agencies_bloc.dart';

abstract class AgenciesState extends Equatable {
  const AgenciesState();
  
  @override
  List<Object> get props => [];
}

class AgenciesInitial extends AgenciesState {}


class AgenciesFetchSuccess extends AgenciesState {
  const AgenciesFetchSuccess(this.agencies);

  final List<Agency> agencies;

  @override
  List<Object> get props => [
    agencies,
  ];
}

class AgenciesFetchFailed extends AgenciesState {
  const AgenciesFetchFailed(this.errorMessage);

  final String errorMessage;

  @override
  List<Object> get props => [
    errorMessage,
  ];
}

class AgenciesFetchLoading extends AgenciesState {}
