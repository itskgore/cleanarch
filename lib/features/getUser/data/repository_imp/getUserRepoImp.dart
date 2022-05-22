import 'package:cleanarch/core/usecase/usecase.dart';
import 'package:cleanarch/core/errors/failures.dart';
import 'package:cleanarch/core/data_entities/user_data_entity.dart';
import 'package:cleanarch/features/getUser/data/datasource/remote_getUser.dart';
import 'package:cleanarch/features/getUser/domain/repository/getUserRepo.dart';
import 'package:dartz/dartz.dart';

class GetUserRepoImp extends GetUserRepo {
  RemoteGerUser remoteGerUser;
  GetUserRepoImp(this.remoteGerUser);
  @override
  Future<Either<Failure, UserDataEntity>> getUser(UserId id) async {
    try {
      final data = await remoteGerUser.getUser(id.id);
      return Right(data);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
