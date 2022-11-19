import 'dart:convert';
import 'account.dart';

class User {
  final int id;
  final String username;
  final String email;
  final String provider;
  final bool confirmed;
  final bool blocked;
  final String createdAt;
  final String updatedAt;
  final Role role;
  final Account account;
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.provider,
    required this.confirmed,
    required this.blocked,
    required this.createdAt,
    required this.updatedAt,
    required this.role,
    required this.account,
  });

  User copyWith({
    int? id,
    String? username,
    String? email,
    String? provider,
    bool? confirmed,
    bool? blocked,
    String? createdAt,
    String? updatedAt,
    Role? role,
    Account? account,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      provider: provider ?? this.provider,
      confirmed: confirmed ?? this.confirmed,
      blocked: blocked ?? this.blocked,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      role: role ?? this.role,
      account: account ?? this.account,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'provider': provider,
      'confirmed': confirmed,
      'blocked': blocked,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'role': role.toMap(),
      'account': account.toMap(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'].toInt() as int,
      username: map['username'] as String,
      email: map['email'] as String,
      provider: map['provider'] as String,
      confirmed: map['confirmed'] as bool,
      blocked: map['blocked'] as bool,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      role: Role.fromMap(map['role'] as Map<String, dynamic>),
      account: Account.fromMap(map['account'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, account: $account)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.email == email &&
        other.provider == provider &&
        other.confirmed == confirmed &&
        other.blocked == blocked &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.role == role &&
        other.account == account;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        email.hashCode ^
        provider.hashCode ^
        confirmed.hashCode ^
        blocked.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        role.hashCode ^
        account.hashCode;
  }
}

class Role {
  final int id;
  final String name;
  final String description;
  final String type;
  final String createdAt;
  final String updatedAt;
  Role({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
  });

  Role copyWith({
    int? id,
    String? name,
    String? description,
    String? type,
    String? createdAt,
    String? updatedAt,
  }) {
    return Role(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'type': type,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      description: map['description'] as String,
      type: map['type'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Role.fromJson(String source) =>
      Role.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Role(id: $id, name: $name, description: $description, type: $type, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant Role other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.type == type &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        type.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
