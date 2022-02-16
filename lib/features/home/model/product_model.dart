import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'product_model.g.dart';

@JsonSerializable(createToJson: false)
class ProductModel extends INetworkModel<ProductModel?> with EquatableMixin {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  @override
  ProductModel fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() {
    return null;
  }

  @override
  String toString() {
    return 'title: $title \n, price: $price \n, description: $description \n, category: $category \n';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, price];
}

@JsonSerializable(createToJson: false)
class Rating {
  final double? rate;
  final int? count;

  Rating(this.rate, this.count);

  factory Rating.fromJson(Map<String, dynamic> json) {
    return _$RatingFromJson(json);
  }
}
