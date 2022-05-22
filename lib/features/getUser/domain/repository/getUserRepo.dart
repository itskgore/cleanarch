import 'package:cleanarch/core/data_entities/user_data_entity.dart';
import 'package:cleanarch/core/errors/failures.dart';
import 'package:cleanarch/core/usecase/usecase.dart';
import 'package:dartz/dartz.dart';

abstract class GetUserRepo {
  Future<Either<Failure, UserDataEntity>> getUser(UserId id);
}
