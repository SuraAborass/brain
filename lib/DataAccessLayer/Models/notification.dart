import 'dart:convert';
import 'from_user.dart';

class UserNotification {
   final String title;
   final String description;
   final String time;
   final FromUser from_user;

  UserNotification({
    required this.title,
    required this.description,
    required this.time,
    required this.from_user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'from_user' : from_user,
      'time' : time,
    };
  }

  factory UserNotification.fromMap(Map<String, dynamic> map) {
    return UserNotification(
      title: map['title'] as String,
      description: map['description'] as String,
      time: map['time'] as String,
      from_user:   FromUser.fromMap(map['from_user']),
    );
  }


  String toJson() => json.encode(toMap());
  factory UserNotification.fromJson(String source) =>
      UserNotification.fromMap(json.decode(source) as Map<String, dynamic>);
}