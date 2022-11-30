import 'dart:convert';

import 'package:brain/DataAccessLayer/Models/task.dart';

class UserProject {
  final int id;
  final String title;
  final String description;
  final String image;
  final String url;
  final String service;
  final List<Task>? tasks;
  UserProject({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.url,
    required this.service,
    this.tasks,
  });

  UserProject copyWith({
    int? id,
    String? title,
    String? description,
    String? image,
    String? url,
    String? service,
    List<Task>? tasks,
  }) {
    return UserProject(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      url: url ?? this.url,
      service: service ?? this.service,
      tasks: tasks ?? this.tasks,
    );
  }

  factory UserProject.fromMap(Map<String, dynamic> map) {
    return UserProject(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      url: map['url'] as String,
      service: map['service'] as String,
      tasks:
          map['tasks'] != null ? tasksfromJson(jsonEncode(map['tasks'])) : null,
    );
  }
  static List<Task> tasksfromJson(String json) {
    final parsed = jsonDecode(json).cast<Map<String, dynamic>>();
    return parsed.map<Task>((json) => Task.fromMap(json)).toList();
  }
}
