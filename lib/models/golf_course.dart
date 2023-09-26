import 'dart:ffi';
import 'package:flutter/material.dart';
import '../utils/logger.dart';
import 'package:http/http.dart' as http;

class GolfCourseModel {
  String country;
  String clubID;
  String clubName;
  String city;
  String state;
  String address;
  String timestampUpdated;
  String courseID;
  String courseName;

  GolfCourseModel(
      {required this.country,
      required this.clubID,
      required this.clubName,
      required this.city,
      required this.address,
      required this.courseID,
      required this.courseName,
      required this.state,
      required this.timestampUpdated});

//   GolfCourseModel.fromJson(Map<String, dynamic> json) {
//     country = json['country'];
//     clubID = json['clubID'];
//     clubName = json['clubName'];
//     city = json['city'];
//     address = json['address'];
//     courseID = json['courseID'];
//     courseName = json['courseName'];
//     state = json['state'];
//     timestampUpdated = json['timestampUpdated'];
//   }
}
