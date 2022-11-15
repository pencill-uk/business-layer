import 'dart:convert';

import 'package:equatable/equatable.dart';

class Child extends Equatable {
  final int id;
  final ChildAttributes attributes;
  const Child({
    this.id = 0,
    required this.attributes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'attributes': attributes.toMap(),
    };
  }

  factory Child.fromMap(Map<String, dynamic> map) {
    return Child(
      id: map['id']?.toInt() ?? 0,
      attributes: ChildAttributes.fromMap(map['attributes']),
    );
  }

  // String toJson() => json.encode(toMap());

  Map<String, dynamic> toJson() => {
        "data": {
          "nickName": attributes.nickName,
          "firstName": attributes.firstName,
          "lastName": attributes.lastName,
          "dateOfBirth": attributes.dateOfBirth,
          "gender": attributes.gender
        }
      };

  factory Child.fromJson(String source) => Child.fromMap(json.decode(source));

  @override
  String toString() => 'Child(id: $id, attributes: $attributes)';

  @override
  List<Object> get props => [id, attributes];
}

class ChildAttributes extends Equatable {
  final String nickName;
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final String gender;
  final String createdAt;
  final String updatedAt;
  final String publishedAt;
  const ChildAttributes({
    this.nickName = '',
    this.firstName = '',
    this.lastName = '',
    this.dateOfBirth = '',
    this.gender = '',
    this.createdAt = '',
    this.updatedAt = '',
    this.publishedAt = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'nickName': nickName,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth,
      'gender': gender,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'publishedAt': publishedAt,
    };
  }

  factory ChildAttributes.fromMap(Map<String, dynamic> map) {
    return ChildAttributes(
      nickName: map['nickName'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      dateOfBirth: map['dateOfBirth'] ?? '',
      gender: map['gender'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ChildAttributes.fromJson(String source) =>
      ChildAttributes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Attributes(nickName: $nickName, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt)';
  }

  @override
  List<Object> get props {
    return [
      nickName,
      firstName,
      lastName,
      dateOfBirth,
      gender,
      createdAt,
      updatedAt,
      publishedAt,
    ];
  }
}
