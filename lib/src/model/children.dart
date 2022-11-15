import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'child.dart';
import 'meta.dart';

class Children extends Equatable {
  List<Child> children;
  Meta meta;

  Children({
    this.children = const [],
    required this.meta,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  factory Children.fromJson(String json) {
    final parsed = jsonDecode(json);
    return Children(
      children: (parsed['data'] as List<dynamic>)
          .map((child) => Child.fromJson(child))
          .toList(),
      meta: Meta.fromJson(parsed['meta']),
    );
  }
}
