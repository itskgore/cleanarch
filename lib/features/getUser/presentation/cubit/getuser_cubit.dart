import 'package:bloc/bloc.dart';
import 'package:cleanarch/core/data_entities/user_data_entity.dart';
import 'package:cleanarch/core/usecase/usecase.dart';
import 'package:cleanarch/features/getUser/domain/usecase/getUserDataUsecase.dart';
import 'package:equatable/equatable.dart';

part 'getuser_state.dart';

class GetuserCubit extends Cubit<GetuserState> {
  final GetUserDetails getUserDetails;
  GetuserCubit(this.getUserDetails) : super(GetuserInitial());

  getUserData(String id) {
    emit(GetuserLoading());
    final result = getUserDetails(UserId(id: id));
    result.then((value) {
      value.fold((l) => emit(GetuserError(l.displayErrorMessage())),
          (r) => emit(GetuserLoaded(r)));
    });
  }
}
