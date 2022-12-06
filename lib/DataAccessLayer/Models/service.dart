import 'dart:convert';

class BrainService{
  late final int id;
  late final String name;
  late final String description;
  late final String icon;
  late final String url;

  BrainService({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
      'url': url,
    };
  }


  factory BrainService.fromMap(Map<String, dynamic> map) {
    return BrainService(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      icon: map['icon'] as String,
      url: map['url'] as String,

    );
  }

  String toJson() => json.encode(toMap());
  factory BrainService.fromJson(String source) =>
      BrainService.fromMap(json.decode(source));

}