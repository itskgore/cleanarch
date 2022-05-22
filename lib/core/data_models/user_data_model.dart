import 'package:cleanarch/core/data_entities/user_data_entity.dart';

class UserDataModel extends UserDataEntity {
  final String id;
  final String sId;
  final String name;
  final String email;
  final String profileImage;

  UserDataModel(
      {required this.id,
      required this.sId,
      required this.name,
      required this.email,
      required this.profileImage})
      : super(
            email: email,
            id: id,
            name: name,
            profileImage: profileImage,
            sId: sId);
  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
        id: json['id'],
        sId: json['SId'],
        name: json['name'],
        email: json['email'],
        profileImage: json['profileImage']);
  }
}
