import 'package:cleanarch/core/data_entities/user_data_entity.dart';
import 'package:cleanarch/core/errors/failures.dart';
import 'package:cleanarch/core/usecase/usecase.dart';
import 'package:cleanarch/features/getUser/domain/repository/getUserRepo.dart';
import 'package:dartz/dartz.dart';

class GetUserDetails extends UseCase<UserDataEntity, UserId> {
  GetUserRepo getUserRepo;
  GetUserDetails(this.getUserRepo);
  @override
  Future<Either<Failure, UserDataEntity>> call(UserId params) {
    return getUserRepo.getUser(params);
  }
}
