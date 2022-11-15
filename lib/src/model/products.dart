import 'dart:convert';

import '../model/product.dart';

import 'meta.dart';

class Products {
  final List<Product> data;
  final Meta meta;
  Products({
    required this.data,
    required this.meta,
  });

  Products copyWith({
    List<Product>? data,
    Meta? meta,
  }) {
    return Products(
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

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      data: List<Product>.from(map['data']?.map((x) => Product.fromMap(x))),
      meta: Meta.fromMap(map['meta']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) =>
      Products.fromMap(json.decode(source));

  @override
  String toString() => 'Products(data: $data, meta: $meta)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Products &&
        // listEquals(other.data, data) &&
        other.meta == meta;
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}

// class Data {
//   final int id;
//   final String description;
//   final String createdAt;
//   final String updatedAt;
//   final String publishedAt;
//   final String productName;
//   final int fullPrice;
//   final String shortDescription;
//   Data({
//     required this.id,
//     required this.description,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.publishedAt,
//     required this.productName,
//     required this.fullPrice,
//     required this.shortDescription,
//   });

//   Data copyWith({
//     int? id,
//     String? description,
//     String? createdAt,
//     String? updatedAt,
//     String? publishedAt,
//     String? productName,
//     int? fullPrice,
//     String? shortDescription,
//   }) {
//     return Data(
//       id: id ?? this.id,
//       description: description ?? this.description,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       publishedAt: publishedAt ?? this.publishedAt,
//       productName: productName ?? this.productName,
//       fullPrice: fullPrice ?? this.fullPrice,
//       shortDescription: shortDescription ?? this.shortDescription,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'description': description,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'publishedAt': publishedAt,
//       'productName': productName,
//       'fullPrice': fullPrice,
//       'shortDescription': shortDescription,
//     };
//   }

//   factory Data.fromMap(Map<String, dynamic> map) {
//     return Data(
//       id: map['id']?.toInt() ?? 0,
//       description: map['description'] ?? '',
//       createdAt: map['createdAt'] ?? '',
//       updatedAt: map['updatedAt'] ?? '',
//       publishedAt: map['publishedAt'] ?? '',
//       productName: map['productName'] ?? '',
//       fullPrice: map['fullPrice']?.toInt() ?? 0,
//       shortDescription: map['shortDescription'] ?? '',
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Data.fromJson(String source) => Data.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Data(id: $id, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, productName: $productName, fullPrice: $fullPrice, shortDescription: $shortDescription)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Data &&
//         other.id == id &&
//         other.description == description &&
//         other.createdAt == createdAt &&
//         other.updatedAt == updatedAt &&
//         other.publishedAt == publishedAt &&
//         other.productName == productName &&
//         other.fullPrice == fullPrice &&
//         other.shortDescription == shortDescription;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         description.hashCode ^
//         createdAt.hashCode ^
//         updatedAt.hashCode ^
//         publishedAt.hashCode ^
//         productName.hashCode ^
//         fullPrice.hashCode ^
//         shortDescription.hashCode;
//   }
// }

// class Meta {
//   final Pagination pagination;
//   Meta({
//     required this.pagination,
//   });

//   Meta copyWith({
//     Pagination? pagination,
//   }) {
//     return Meta(
//       pagination: pagination ?? this.pagination,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'pagination': pagination.toMap(),
//     };
//   }

//   factory Meta.fromMap(Map<String, dynamic> map) {
//     return Meta(
//       pagination: Pagination.fromMap(map['pagination']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Meta.fromJson(String source) => Meta.fromMap(json.decode(source));

//   @override
//   String toString() => 'Meta(pagination: $pagination)';

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Meta && other.pagination == pagination;
//   }

//   @override
//   int get hashCode => pagination.hashCode;
// }

// class Pagination {
//   final int page;
//   final int pageSize;
//   final int pageCount;
//   final int total;
//   Pagination({
//     required this.page,
//     required this.pageSize,
//     required this.pageCount,
//     required this.total,
//   });

//   Pagination copyWith({
//     int? page,
//     int? pageSize,
//     int? pageCount,
//     int? total,
//   }) {
//     return Pagination(
//       page: page ?? this.page,
//       pageSize: pageSize ?? this.pageSize,
//       pageCount: pageCount ?? this.pageCount,
//       total: total ?? this.total,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'page': page,
//       'pageSize': pageSize,
//       'pageCount': pageCount,
//       'total': total,
//     };
//   }

//   factory Pagination.fromMap(Map<String, dynamic> map) {
//     return Pagination(
//       page: map['page']?.toInt() ?? 0,
//       pageSize: map['pageSize']?.toInt() ?? 0,
//       pageCount: map['pageCount']?.toInt() ?? 0,
//       total: map['total']?.toInt() ?? 0,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Pagination.fromJson(String source) =>
//       Pagination.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Pagination(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Pagination &&
//         other.page == page &&
//         other.pageSize == pageSize &&
//         other.pageCount == pageCount &&
//         other.total == total;
//   }

//   @override
//   int get hashCode {
//     return page.hashCode ^
//         pageSize.hashCode ^
//         pageCount.hashCode ^
//         total.hashCode;
//   }
// }
