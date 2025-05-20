import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    required String brand,
    required String sku,
    required num weight,
    required Dimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<Review> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required Meta meta,
    required List<String> images,
    required String thumbnail,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  // TODO: implement availabilityStatus
  String get availabilityStatus => throw UnimplementedError();

  @override
  // TODO: implement brand
  String get brand => throw UnimplementedError();

  @override
  // TODO: implement category
  String get category => throw UnimplementedError();

  @override
  // TODO: implement description
  String get description => throw UnimplementedError();

  @override
  // TODO: implement dimensions
  Dimensions get dimensions => throw UnimplementedError();

  @override
  // TODO: implement discountPercentage
  double get discountPercentage => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement images
  List<String> get images => throw UnimplementedError();

  @override
  // TODO: implement meta
  Meta get meta => throw UnimplementedError();

  @override
  // TODO: implement minimumOrderQuantity
  int get minimumOrderQuantity => throw UnimplementedError();

  @override
  // TODO: implement price
  double get price => throw UnimplementedError();

  @override
  // TODO: implement rating
  double get rating => throw UnimplementedError();

  @override
  // TODO: implement returnPolicy
  String get returnPolicy => throw UnimplementedError();

  @override
  // TODO: implement reviews
  List<Review> get reviews => throw UnimplementedError();

  @override
  // TODO: implement shippingInformation
  String get shippingInformation => throw UnimplementedError();

  @override
  // TODO: implement sku
  String get sku => throw UnimplementedError();

  @override
  // TODO: implement stock
  int get stock => throw UnimplementedError();

  @override
  // TODO: implement tags
  List<String> get tags => throw UnimplementedError();

  @override
  // TODO: implement thumbnail
  String get thumbnail => throw UnimplementedError();

  @override
  // TODO: implement title
  String get title => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement warrantyInformation
  String get warrantyInformation => throw UnimplementedError();

  @override
  // TODO: implement weight
  num get weight => throw UnimplementedError();
}

@freezed
class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double width,
    required double height,
    required double depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);

  @override
  // TODO: implement depth
  double get depth => throw UnimplementedError();

  @override
  // TODO: implement height
  double get height => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement width
  double get width => throw UnimplementedError();
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required String createdAt,
    required String updatedAt,
    required String barcode,
    required String qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);

  @override
  // TODO: implement barcode
  String get barcode => throw UnimplementedError();

  @override
  // TODO: implement createdAt
  String get createdAt => throw UnimplementedError();

  @override
  // TODO: implement qrCode
  String get qrCode => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement updatedAt
  String get updatedAt => throw UnimplementedError();
}

@freezed
class Review with _$Review {
  const factory Review({
    required int rating,
    required String comment,
    required String date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);

  @override
  // TODO: implement comment
  String get comment => throw UnimplementedError();

  @override
  // TODO: implement date
  String get date => throw UnimplementedError();

  @override
  // TODO: implement rating
  int get rating => throw UnimplementedError();

  @override
  // TODO: implement reviewerEmail
  String get reviewerEmail => throw UnimplementedError();

  @override
  // TODO: implement reviewerName
  String get reviewerName => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
