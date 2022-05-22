import 'dart:convert';

import 'package:cleanarch/core/data_models/user_data_model.dart';
import 'package:cleanarch/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class RemoteGerUser {
  Future<UserDataModel> getUser(String id);
}

class RemoteGerUserImp extends RemoteGerUser {
  @override
  Future<UserDataModel> getUser(String id) async {
    try {
      final result = await http
          .get(Uri.parse("https://flutter_bloc_series/getUserDetails/${id}"));
      if (result.statusCode == 200) {
        return UserDataModel.fromJson(json.decode(result.body));
      } else {
        throw ServerFailure();
      }
    } catch (e) {
      throw ServerFailure();
    }
  }
}
