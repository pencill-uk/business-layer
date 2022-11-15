// import 'dart:convert';

// import 'package:flutter/foundation.dart';
// import 'base_model.dart';

// class User extends BaseModel with ChangeNotifier {
//   final String status;
//   final List<String> roles;
//   final String firstName;
//   final String lastName;
//   final String nickName;
//   final Contact contact;
//   final Address address;
//   final String createdAt;
//   final String updatedAt;
//   User({
//     required id,
//     required this.status,
//     required this.roles,
//     required this.firstName,
//     required this.lastName,
//     required this.nickName,
//     required this.contact,
//     required this.address,
//     required this.createdAt,
//     required this.updatedAt,
//   }) : super(id: id);

//   User copyWith({
//     String? id,
//     String? status,
//     List<String>? roles,
//     String? firstName,
//     String? lastName,
//     String? nickName,
//     Contact? contact,
//     Address? address,
//     String? createdAt,
//     String? updatedAt,
//   }) {
//     return User(
//       id: id ?? this.id,
//       status: status ?? this.status,
//       roles: roles ?? this.roles,
//       firstName: firstName ?? this.firstName,
//       lastName: lastName ?? this.lastName,
//       nickName: nickName ?? this.nickName,
//       contact: contact ?? this.contact,
//       address: address ?? this.address,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'status': status,
//       'roles': roles,
//       'firstName': firstName,
//       'lastName': lastName,
//       'nickName': nickName,
//       'contact': contact.toMap(),
//       'address': address.toMap(),
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//     };
//   }

//   factory User.fromMap(Map<String, dynamic> map) {
//     return User(
//       id: map['id'],
//       status: map['status'],
//       roles: List<String>.from(map['roles']),
//       firstName: map['firstName'],
//       lastName: map['lastName'],
//       nickName: map['nickName'],
//       contact: Contact.fromMap(map['contact']),
//       address: Address.fromMap(map['address']),
//       createdAt: map['createdAt'],
//       updatedAt: map['updatedAt'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory User.fromJson(String source) => User.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'User(id: $id, status: $status, roles: $roles, firstName: $firstName, lastName: $lastName, nickName: $nickName, contact: $contact, address: $address, createdAt: $createdAt, updatedAt: $updatedAt)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is User &&
//         other.id == id &&
//         other.status == status &&
//         listEquals(other.roles, roles) &&
//         other.firstName == firstName &&
//         other.lastName == lastName &&
//         other.nickName == nickName &&
//         other.contact == contact &&
//         other.address == address &&
//         other.createdAt == createdAt &&
//         other.updatedAt == updatedAt;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         status.hashCode ^
//         roles.hashCode ^
//         firstName.hashCode ^
//         lastName.hashCode ^
//         nickName.hashCode ^
//         contact.hashCode ^
//         address.hashCode ^
//         createdAt.hashCode ^
//         updatedAt.hashCode;
//   }
// }

// class Contact {
//   final String emailAddress;
//   final String mobileNUmber;
//   Contact({
//     required this.emailAddress,
//     required this.mobileNUmber,
//   });

//   Contact copyWith({
//     String? emailAddress,
//     String? mobileNUmber,
//   }) {
//     return Contact(
//       emailAddress: emailAddress ?? this.emailAddress,
//       mobileNUmber: mobileNUmber ?? this.mobileNUmber,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'emailAddress': emailAddress,
//       'mobileNUmber': mobileNUmber,
//     };
//   }

//   factory Contact.fromMap(Map<String, dynamic> map) {
//     return Contact(
//       emailAddress: map['emailAddress'],
//       mobileNUmber: map['mobileNUmber'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Contact.fromJson(String source) =>
//       Contact.fromMap(json.decode(source));

//   @override
//   String toString() =>
//       'Contact(emailAddress: $emailAddress, mobileNUmber: $mobileNUmber)';

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Contact &&
//         other.emailAddress == emailAddress &&
//         other.mobileNUmber == mobileNUmber;
//   }

//   @override
//   int get hashCode => emailAddress.hashCode ^ mobileNUmber.hashCode;
// }

// class Address {
//   final String addressLine1;
//   final String addressLine2;
//   final String addressLine3;
//   final String city;
//   final String state;
//   final String postcode;
//   final String country;
//   Address({
//     required this.addressLine1,
//     required this.addressLine2,
//     required this.addressLine3,
//     required this.city,
//     required this.state,
//     required this.postcode,
//     required this.country,
//   });

//   Address copyWith({
//     String? addressLine1,
//     String? addressLine2,
//     String? addressLine3,
//     String? city,
//     String? state,
//     String? postcode,
//     String? country,
//   }) {
//     return Address(
//       addressLine1: addressLine1 ?? this.addressLine1,
//       addressLine2: addressLine2 ?? this.addressLine2,
//       addressLine3: addressLine3 ?? this.addressLine3,
//       city: city ?? this.city,
//       state: state ?? this.state,
//       postcode: postcode ?? this.postcode,
//       country: country ?? this.country,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'addressLine1': addressLine1,
//       'addressLine2': addressLine2,
//       'addressLine3': addressLine3,
//       'city': city,
//       'state': state,
//       'postcode': postcode,
//       'country': country,
//     };
//   }

//   factory Address.fromMap(Map<String, dynamic> map) {
//     return Address(
//       addressLine1: map['addressLine1'],
//       addressLine2: map['addressLine2'],
//       addressLine3: map['addressLine3'],
//       city: map['city'],
//       state: map['state'],
//       postcode: map['postcode'],
//       country: map['country'],
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Address.fromJson(String source) =>
//       Address.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Address(addressLine1: $addressLine1, addressLine2: $addressLine2, addressLine3: $addressLine3, city: $city, state: $state, postcode: $postcode, country: $country)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Address &&
//         other.addressLine1 == addressLine1 &&
//         other.addressLine2 == addressLine2 &&
//         other.addressLine3 == addressLine3 &&
//         other.city == city &&
//         other.state == state &&
//         other.postcode == postcode &&
//         other.country == country;
//   }

//   @override
//   int get hashCode {
//     return addressLine1.hashCode ^
//         addressLine2.hashCode ^
//         addressLine3.hashCode ^
//         city.hashCode ^
//         state.hashCode ^
//         postcode.hashCode ^
//         country.hashCode;
//   }
// }

import 'dart:convert';

class User {
  final int id;
  final String username;
  final String email;
  final String provider;
  final bool confirmed;
  final bool blocked;
  final String createdAt;
  final String updatedAt;
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.provider,
    required this.confirmed,
    required this.blocked,
    required this.createdAt,
    required this.updatedAt,
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
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'provider': provider,
      'confirmed': confirmed,
      'blocked': blocked,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      provider: map['provider'] ?? '',
      confirmed: map['confirmed'] ?? false,
      blocked: map['blocked'] ?? false,
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.username == username &&
        other.email == email &&
        other.provider == provider &&
        other.confirmed == confirmed &&
        other.blocked == blocked &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
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
        updatedAt.hashCode;
  }
}
