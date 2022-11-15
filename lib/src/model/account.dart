import 'dart:convert';

import 'user.dart';

class Account {
  final int id;
  final String accountName;
  final String accountType;
  final bool accountStatus;
  final String createdAt;
  final String updatedAt;
  final List<User> users;
  final List<Children> children;
  final MarketingPreferences marketingPreferences;
  Account({
    required this.id,
    required this.accountName,
    required this.accountType,
    required this.accountStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.users,
    required this.children,
    required this.marketingPreferences,
  });

  Account copyWith({
    int? id,
    String? accountName,
    String? accountType,
    bool? accountStatus,
    String? createdAt,
    String? updatedAt,
    List<User>? users,
    List<Children>? children,
    MarketingPreferences? marketingPreferences,
  }) {
    return Account(
      id: id ?? this.id,
      accountName: accountName ?? this.accountName,
      accountType: accountType ?? this.accountType,
      accountStatus: accountStatus ?? this.accountStatus,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      users: users ?? this.users,
      children: children ?? this.children,
      marketingPreferences: marketingPreferences ?? this.marketingPreferences,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'accountName': accountName,
      'accountType': accountType,
      'accountStatus': accountStatus,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'users': users.map((x) => x.toMap()).toList(),
      'children': children.map((x) => x.toMap()).toList(),
      'marketingPreferences': marketingPreferences.toMap(),
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    print("Account From Map : $map");
    return Account(
      id: map['id']?.toInt() ?? 0,
      accountName: map['accountName'] ?? '',
      accountType: map['accountType'] ?? '',
      accountStatus: map['accountStatus'] ?? false,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      users: List<User>.from(map['users']?.map((x) => User.fromMap(x)) ?? []),
      // users: List<User>.from(map['users']?.map((x) => User.fromMap(x))),
      children: List<Children>.from(
          map['children']?.map((x) => Children.fromMap(x)) ?? []),
      // List<Children>.from(map['children']?.map((x) => Children.fromMap(x))),
      marketingPreferences:
          MarketingPreferences.fromMap(map['marketingPreferences'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source)['data']);

  @override
  String toString() {
    return 'Account(id: $id, accountName: $accountName, accountType: $accountType, accountStatus: $accountStatus, createdAt: $createdAt, updatedAt: $updatedAt, users: $users, children: $children, marketingPreferences: $marketingPreferences)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Account &&
        other.id == id &&
        other.accountName == accountName &&
        other.accountType == accountType &&
        other.accountStatus == accountStatus &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        // listEquals(other.users, users) &&
        // listEquals(other.children, children) &&
        other.marketingPreferences == marketingPreferences;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        accountName.hashCode ^
        accountType.hashCode ^
        accountStatus.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        users.hashCode ^
        children.hashCode ^
        marketingPreferences.hashCode;
  }
}

class Children {
  final int id;
  final String nickName;
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final String gender;
  final String createdAt;
  final String updatedAt;
  final String publishedAt;
  Children({
    required this.id,
    required this.nickName,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  Children copyWith({
    int? id,
    String? nickName,
    String? firstName,
    String? lastName,
    String? dateOfBirth,
    String? gender,
    String? createdAt,
    String? updatedAt,
    String? publishedAt,
  }) {
    return Children(
      id: id ?? this.id,
      nickName: nickName ?? this.nickName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
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

  factory Children.fromMap(Map<String, dynamic> map) {
    return Children(
      id: map['id']?.toInt() ?? 0,
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

  factory Children.fromJson(String source) =>
      Children.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Children(id: $id, nickName: $nickName, firstName: $firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Children &&
        other.id == id &&
        other.nickName == nickName &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.dateOfBirth == dateOfBirth &&
        other.gender == gender &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.publishedAt == publishedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nickName.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        dateOfBirth.hashCode ^
        gender.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        publishedAt.hashCode;
  }
}

class MarketingPreferences {
  final int id;
  final bool emailOptIn;
  final bool smsOptIn;
  final bool marketingOptIn;
  final bool postalOptIn;
  MarketingPreferences({
    required this.id,
    required this.emailOptIn,
    required this.smsOptIn,
    required this.marketingOptIn,
    required this.postalOptIn,
  });

  MarketingPreferences copyWith({
    int? id,
    bool? emailOptIn,
    bool? smsOptIn,
    bool? marketingOptIn,
    bool? postalOptIn,
  }) {
    return MarketingPreferences(
      id: id ?? this.id,
      emailOptIn: emailOptIn ?? this.emailOptIn,
      smsOptIn: smsOptIn ?? this.smsOptIn,
      marketingOptIn: marketingOptIn ?? this.marketingOptIn,
      postalOptIn: postalOptIn ?? this.postalOptIn,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'emailOptIn': emailOptIn,
      'smsOptIn': smsOptIn,
      'marketingOptIn': marketingOptIn,
      'postalOptIn': postalOptIn,
    };
  }

  factory MarketingPreferences.fromMap(Map<String, dynamic> map) {
    return MarketingPreferences(
      id: map['id']?.toInt() ?? 0,
      emailOptIn: map['emailOptIn'] ?? false,
      smsOptIn: map['smsOptIn'] ?? false,
      marketingOptIn: map['marketingOptIn'] ?? false,
      postalOptIn: map['postalOptIn'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory MarketingPreferences.fromJson(String source) =>
      MarketingPreferences.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MarketingPreferences(id: $id, emailOptIn: $emailOptIn, smsOptIn: $smsOptIn, marketingOptIn: $marketingOptIn, postalOptIn: $postalOptIn)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MarketingPreferences &&
        other.id == id &&
        other.emailOptIn == emailOptIn &&
        other.smsOptIn == smsOptIn &&
        other.marketingOptIn == marketingOptIn &&
        other.postalOptIn == postalOptIn;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        emailOptIn.hashCode ^
        smsOptIn.hashCode ^
        marketingOptIn.hashCode ^
        postalOptIn.hashCode;
  }
}
