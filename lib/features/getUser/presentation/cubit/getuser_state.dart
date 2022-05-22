part of 'getuser_cubit.dart';

abstract class GetuserState extends Equatable {
  const GetuserState();

  @override
  List<Object> get props => [];
}

class GetuserInitial extends GetuserState {}

class GetuserLoading extends GetuserState {}

class GetuserLoaded extends GetuserState {
  final UserDataEntity userDataEntity;

  GetuserLoaded(this.userDataEntity);
}

class GetuserError extends GetuserState {
  final String errorMsg;

  GetuserError(this.errorMsg);
}
