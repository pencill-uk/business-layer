import 'dart:convert';

import 'package:equatable/equatable.dart';

class Meta extends Equatable {
  final Pagination pagination;
  Meta({
    required this.pagination,
  });

  Map<String, dynamic> toMap() {
    return {
      'pagination': pagination.toMap(),
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      pagination: Pagination.fromMap(map['pagination']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) => Meta.fromMap(json.decode(source));

  @override
  String toString() => 'Meta(pagination: $pagination)';

  @override
  List<Object> get props => [pagination];
}

class Pagination extends Equatable {
  final int page;
  final int pageSize;
  final int pageCount;
  final int total;
  Pagination({
    this.page = 0,
    this.pageSize = 0,
    this.pageCount = 0,
    this.total = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'page': page,
      'pageSize': pageSize,
      'pageCount': pageCount,
      'total': total,
    };
  }

  factory Pagination.fromMap(Map<String, dynamic> map) {
    return Pagination(
      page: map['page']?.toInt() ?? 0,
      pageSize: map['pageSize']?.toInt() ?? 0,
      pageCount: map['pageCount']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagination.fromJson(String source) =>
      Pagination.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Pagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
  }

  @override
  List<Object> get props => [page, pageSize, pageCount, total];
}
