import 'package:cleanarch/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class UserId extends Equatable {
  final String id;
  UserId({required this.id});
  @override
  List<Object> get props => [id];
}

class UnlinkParams extends Equatable {
  final String loanId;
  final String vehicleId;
  UnlinkParams({required this.loanId, required this.vehicleId});
  @override
  List<Object?> get props => [loanId, vehicleId];
}
