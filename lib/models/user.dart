// // import 'dart:ffi';

// // import 'package:awesome_dialog/awesome_dialog.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get_core/src/get_main.dart';
// // import '../utils/logger.dart';

// // class UserList {
// //   List<User>? results;

// //   UserList({this.results});

// //   UserList.fromJson(Map<String, dynamic> json) {
// //     if (json['results'] != null) {
// //       results = <User>[];
// //       json['results'].forEach((v) {
// //         results!.add(User.fromJson(v));
// //       });
// //     }
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     if (results != null) {
// //       data['results'] = results!.map((v) => v.toJson()).toList();
// //     }
// //     return data;
// //   }
// // }

class User {
  String? objectId;
  final String username;
  final String imageUrl;
  String? password;
  String? surname;
  final String phoneNomber;
  bool? phoneVerified;
  String createdAt;
  String updatedAt;

  User(
    this.imageUrl,
    this.phoneNomber, {
    required this.username,
    this.password,
    this.surname,
    this.phoneVerified,
    required this.createdAt,
    required this.updatedAt,
  });

//   User.fromJson(Map<String, dynamic> json) {
//     objectId = json["objectId"];
//     username = json["username"];
//     password = json["password"];
//     surname = json["surname"];
//     phoneNomber = json["phoneNomber"];
//     phoneVerified = json["phoneVerified"];
//     createdAt = json["createdAt"];
//     updatedAt = json["updatedAt"];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data["objectId"] = objectId;
//     data["username"] = username;
//     data["surname"] = surname;
//     data["phoneNomber"] = phoneNomber;
//     data["phoneverified"] = phoneVerified;
//     data["createdAt"] = createdAt;
//     data["updatedAt"] = updatedAt;
//     return data;
//   }

//   @override
//   String toString() =>
//       'User(objectId: $objectId, username: $username, surname: $surname, phoneNomber: $phoneNomber, phoneVerified: $phoneVerified, createdAt: $createdAt, upadtedAt: $updatedAt)';

//   Future<void>
}
