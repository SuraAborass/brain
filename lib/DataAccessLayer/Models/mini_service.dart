// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MiniService {
  final int id;
  final String name;
  final String description;
  final String icon;
  final String price_minimum;
  final String price_maximum;
  MiniService({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
    required this.price_minimum,
    required this.price_maximum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'icon': icon,
      'price_minimum': price_minimum,
      'price_maximum': price_maximum,
    };
  }

  factory MiniService.fromMap(Map<String, dynamic> map) {
    return MiniService(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      icon: map['icon'] as String,
      price_minimum: num.parse(map['price_minimum'].toString()).toString(),
      price_maximum: num.parse(map['price_maximum'].toString()).toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory MiniService.fromJson(String source) =>
      MiniService.fromMap(json.decode(source) as Map<String, dynamic>);
}
