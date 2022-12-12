import 'dart:convert';

class FromUser {
  final int id;
  final String name;
  final String avatar;

  FromUser({
    required this.id,
    required this.name,
    required this.avatar,

  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatar': avatar,
    };
  }

  factory FromUser.fromMap(Map<String, dynamic> map) {
    return FromUser(
      id: map['id'] as int,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FromUser.fromJson(String source) =>
      FromUser.fromMap(json.decode(source) as Map<String, dynamic>);
}