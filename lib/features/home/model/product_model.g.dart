// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel()
  ..id = json['id'] as int?
  ..title = json['title'] as String?
  ..price = (json['price'] as num?)?.toDouble()
  ..description = json['description'] as String?
  ..category = json['category'] as String?
  ..image = json['image'] as String?
  ..rating = json['rating'] == null
      ? null
      : Rating.fromJson(json['rating'] as Map<String, dynamic>);

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      (json['rate'] as num?)?.toDouble(),
      json['count'] as int?,
    );
