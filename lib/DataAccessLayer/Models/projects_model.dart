import 'dart:convert';

class Projects {
  final int id;
  final String title;
  final String description;
  final String image;
  final String url;
  final String user;
  final String service;
  final String tasks;


  Projects({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.url,
    required this.user,
    required this.service,
    required this.tasks,

  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'url': url,
      'user': user,
      'service': service,
      'tasks': tasks,
    };
  }

  factory Projects.fromMap(Map<String, dynamic> map) {
    return Projects(
        id: map['id']?.toInt() ?? 0,
        title: map['title'] ?? '',
        description: map['description'] ?? '',
        image: map['image'] ?? '',
        url : map['url'] ?? '',
        user : map['user'] ?? '',
        service : map['service'] ?? '',
        tasks : map['tasks'] ?? '',);
        //tasks: map['tasks'] != null ? tasks.fromMap(map['tasks']) : null);
  }

  String toJson() => json.encode(toMap());

  factory Projects.fromJson(String source) =>
      Projects.fromMap(json.decode(source));
}
