import 'dart:convert';

import '../model/account.dart';

import 'meta.dart';

class Accounts {
  final List<Account> data;
  final Meta meta;
  Accounts({
    required this.data,
    required this.meta,
  });

  Accounts copyWith({
    List<Account>? data,
    Meta? meta,
  }) {
    return Accounts(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'meta': meta.toMap(),
    };
  }

  factory Accounts.fromMap(Map<String, dynamic> map) {
    return Accounts(
      data: List<Account>.from(map['data']?.map((x) => Account.fromMap(x))),
      meta: Meta.fromMap(map['meta']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Accounts.fromJson(String source) =>
      Accounts.fromMap(json.decode(source));

  @override
  String toString() => 'Accounts(data: $data, meta: $meta)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Accounts &&
        // listEquals(other.data, data) &&
        other.meta == meta;
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}
