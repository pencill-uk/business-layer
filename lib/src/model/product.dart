import 'dart:convert';

class Product {
  final int id;
  final String description;
  final String createdAt;
  final String updatedAt;
  final String publishedAt;
  final String productName;
  final int fullPrice;
  final String shortDescription;
  Product({
    required this.id,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.productName,
    required this.fullPrice,
    required this.shortDescription,
  });

  Product copyWith({
    int? id,
    String? description,
    String? createdAt,
    String? updatedAt,
    String? publishedAt,
    String? productName,
    int? fullPrice,
    String? shortDescription,
  }) {
    return Product(
      id: id ?? this.id,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      productName: productName ?? this.productName,
      fullPrice: fullPrice ?? this.fullPrice,
      shortDescription: shortDescription ?? this.shortDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'publishedAt': publishedAt,
      'productName': productName,
      'fullPrice': fullPrice,
      'shortDescription': shortDescription,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      description: map['description'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      productName: map['productName'] ?? '',
      fullPrice: map['fullPrice']?.toInt() ?? 0,
      shortDescription: map['shortDescription'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, publishedAt: $publishedAt, productName: $productName, fullPrice: $fullPrice, shortDescription: $shortDescription)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.description == description &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.publishedAt == publishedAt &&
        other.productName == productName &&
        other.fullPrice == fullPrice &&
        other.shortDescription == shortDescription;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        description.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        publishedAt.hashCode ^
        productName.hashCode ^
        fullPrice.hashCode ^
        shortDescription.hashCode;
  }
}
