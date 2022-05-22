import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];

  String displayErrorMessage();
}

// General failures
class ServerFailure extends Failure {
  String? message;
  ServerFailure({this.message});
  @override
  displayErrorMessage() {
    return message ?? "An error Occured,try again later";
  }
}
