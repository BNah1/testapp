// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  category: json['category'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0,
  discountPercentage: (json['discountPercentage'] as num?)?.toDouble() ?? 0,
  rating: (json['rating'] as num?)?.toDouble() ?? 0,
  stock: (json['stock'] as num?)?.toInt() ?? 0,
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  brand: json['brand'] as String? ?? '',
  sku: json['sku'] as String? ?? '',
  weight: json['weight'] as num? ?? 0,
  dimensions:
      json['dimensions'] == null
          ? null
          : Dimensions.fromJson(json['dimensions'] as Map<String, dynamic>),
  warrantyInformation: json['warrantyInformation'] as String? ?? '',
  shippingInformation: json['shippingInformation'] as String? ?? '',
  availabilityStatus: json['availabilityStatus'] as String? ?? '',
  reviews:
      (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Review>[],
  returnPolicy: json['returnPolicy'] as String? ?? '',
  minimumOrderQuantity: (json['minimumOrderQuantity'] as num?)?.toInt() ?? 0,
  meta:
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  thumbnail: json['thumbnail'] as String? ?? '',
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'category': instance.category,
  'price': instance.price,
  'discountPercentage': instance.discountPercentage,
  'rating': instance.rating,
  'stock': instance.stock,
  'tags': instance.tags,
  'brand': instance.brand,
  'sku': instance.sku,
  'weight': instance.weight,
  'dimensions': instance.dimensions,
  'warrantyInformation': instance.warrantyInformation,
  'shippingInformation': instance.shippingInformation,
  'availabilityStatus': instance.availabilityStatus,
  'reviews': instance.reviews,
  'returnPolicy': instance.returnPolicy,
  'minimumOrderQuantity': instance.minimumOrderQuantity,
  'meta': instance.meta,
  'images': instance.images,
  'thumbnail': instance.thumbnail,
};

_Dimensions _$DimensionsFromJson(Map<String, dynamic> json) => _Dimensions(
  width: (json['width'] as num?)?.toDouble() ?? 0,
  height: (json['height'] as num?)?.toDouble() ?? 0,
  depth: (json['depth'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$DimensionsToJson(_Dimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'depth': instance.depth,
    };

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  createdAt: json['createdAt'] as String? ?? '',
  updatedAt: json['updatedAt'] as String? ?? '',
  barcode: json['barcode'] as String? ?? '',
  qrCode: json['qrCode'] as String? ?? '',
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'barcode': instance.barcode,
  'qrCode': instance.qrCode,
};

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  rating: (json['rating'] as num?)?.toInt() ?? 0,
  comment: json['comment'] as String? ?? '',
  date: json['date'] as String? ?? '',
  reviewerName: json['reviewerName'] as String? ?? '',
  reviewerEmail: json['reviewerEmail'] as String? ?? '',
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'rating': instance.rating,
  'comment': instance.comment,
  'date': instance.date,
  'reviewerName': instance.reviewerName,
  'reviewerEmail': instance.reviewerEmail,
};
