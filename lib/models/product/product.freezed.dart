// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 int get id; String get title; String get description; String get category; double get price;@JsonKey(name: 'discountPercentage') double get discountPercentage; double get rating; int get stock; List<String> get tags; String get brand; String get sku; num get weight; Dimensions? get dimensions; String get warrantyInformation; String get shippingInformation; String get availabilityStatus; List<Review> get reviews; String get returnPolicy; int get minimumOrderQuantity; Meta? get meta; List<String> get images; String get thumbnail;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.warrantyInformation, warrantyInformation) || other.warrantyInformation == warrantyInformation)&&(identical(other.shippingInformation, shippingInformation) || other.shippingInformation == shippingInformation)&&(identical(other.availabilityStatus, availabilityStatus) || other.availabilityStatus == availabilityStatus)&&const DeepCollectionEquality().equals(other.reviews, reviews)&&(identical(other.returnPolicy, returnPolicy) || other.returnPolicy == returnPolicy)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,price,discountPercentage,rating,stock,const DeepCollectionEquality().hash(tags),brand,sku,weight,dimensions,warrantyInformation,shippingInformation,availabilityStatus,const DeepCollectionEquality().hash(reviews),returnPolicy,minimumOrderQuantity,meta,const DeepCollectionEquality().hash(images),thumbnail]);

@override
String toString() {
  return 'Product(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String category, double price,@JsonKey(name: 'discountPercentage') double discountPercentage, double rating, int stock, List<String> tags, String brand, String sku, num weight, Dimensions? dimensions, String warrantyInformation, String shippingInformation, String availabilityStatus, List<Review> reviews, String returnPolicy, int minimumOrderQuantity, Meta? meta, List<String> images, String thumbnail
});


$DimensionsCopyWith<$Res>? get dimensions;$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? discountPercentage = null,Object? rating = null,Object? stock = null,Object? tags = null,Object? brand = null,Object? sku = null,Object? weight = null,Object? dimensions = freezed,Object? warrantyInformation = null,Object? shippingInformation = null,Object? availabilityStatus = null,Object? reviews = null,Object? returnPolicy = null,Object? minimumOrderQuantity = null,Object? meta = freezed,Object? images = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Dimensions?,warrantyInformation: null == warrantyInformation ? _self.warrantyInformation : warrantyInformation // ignore: cast_nullable_to_non_nullable
as String,shippingInformation: null == shippingInformation ? _self.shippingInformation : shippingInformation // ignore: cast_nullable_to_non_nullable
as String,availabilityStatus: null == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,returnPolicy: null == returnPolicy ? _self.returnPolicy : returnPolicy // ignore: cast_nullable_to_non_nullable
as String,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
    return null;
  }

  return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, this.title = '', this.description = '', this.category = '', this.price = 0, @JsonKey(name: 'discountPercentage') this.discountPercentage = 0, this.rating = 0, this.stock = 0, final  List<String> tags = const <String>[], this.brand = '', this.sku = '', this.weight = 0, this.dimensions, this.warrantyInformation = '', this.shippingInformation = '', this.availabilityStatus = '', final  List<Review> reviews = const <Review>[], this.returnPolicy = '', this.minimumOrderQuantity = 0, this.meta, final  List<String> images = const <String>[], this.thumbnail = ''}): _tags = tags,_reviews = reviews,_images = images;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String category;
@override@JsonKey() final  double price;
@override@JsonKey(name: 'discountPercentage') final  double discountPercentage;
@override@JsonKey() final  double rating;
@override@JsonKey() final  int stock;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  String brand;
@override@JsonKey() final  String sku;
@override@JsonKey() final  num weight;
@override final  Dimensions? dimensions;
@override@JsonKey() final  String warrantyInformation;
@override@JsonKey() final  String shippingInformation;
@override@JsonKey() final  String availabilityStatus;
 final  List<Review> _reviews;
@override@JsonKey() List<Review> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}

@override@JsonKey() final  String returnPolicy;
@override@JsonKey() final  int minimumOrderQuantity;
@override final  Meta? meta;
 final  List<String> _images;
@override@JsonKey() List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@JsonKey() final  String thumbnail;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.dimensions, dimensions) || other.dimensions == dimensions)&&(identical(other.warrantyInformation, warrantyInformation) || other.warrantyInformation == warrantyInformation)&&(identical(other.shippingInformation, shippingInformation) || other.shippingInformation == shippingInformation)&&(identical(other.availabilityStatus, availabilityStatus) || other.availabilityStatus == availabilityStatus)&&const DeepCollectionEquality().equals(other._reviews, _reviews)&&(identical(other.returnPolicy, returnPolicy) || other.returnPolicy == returnPolicy)&&(identical(other.minimumOrderQuantity, minimumOrderQuantity) || other.minimumOrderQuantity == minimumOrderQuantity)&&(identical(other.meta, meta) || other.meta == meta)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,price,discountPercentage,rating,stock,const DeepCollectionEquality().hash(_tags),brand,sku,weight,dimensions,warrantyInformation,shippingInformation,availabilityStatus,const DeepCollectionEquality().hash(_reviews),returnPolicy,minimumOrderQuantity,meta,const DeepCollectionEquality().hash(_images),thumbnail]);

@override
String toString() {
  return 'Product(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String category, double price,@JsonKey(name: 'discountPercentage') double discountPercentage, double rating, int stock, List<String> tags, String brand, String sku, num weight, Dimensions? dimensions, String warrantyInformation, String shippingInformation, String availabilityStatus, List<Review> reviews, String returnPolicy, int minimumOrderQuantity, Meta? meta, List<String> images, String thumbnail
});


@override $DimensionsCopyWith<$Res>? get dimensions;@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? discountPercentage = null,Object? rating = null,Object? stock = null,Object? tags = null,Object? brand = null,Object? sku = null,Object? weight = null,Object? dimensions = freezed,Object? warrantyInformation = null,Object? shippingInformation = null,Object? availabilityStatus = null,Object? reviews = null,Object? returnPolicy = null,Object? minimumOrderQuantity = null,Object? meta = freezed,Object? images = null,Object? thumbnail = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as num,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Dimensions?,warrantyInformation: null == warrantyInformation ? _self.warrantyInformation : warrantyInformation // ignore: cast_nullable_to_non_nullable
as String,shippingInformation: null == shippingInformation ? _self.shippingInformation : shippingInformation // ignore: cast_nullable_to_non_nullable
as String,availabilityStatus: null == availabilityStatus ? _self.availabilityStatus : availabilityStatus // ignore: cast_nullable_to_non_nullable
as String,reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,returnPolicy: null == returnPolicy ? _self.returnPolicy : returnPolicy // ignore: cast_nullable_to_non_nullable
as String,minimumOrderQuantity: null == minimumOrderQuantity ? _self.minimumOrderQuantity : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
as int,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DimensionsCopyWith<$Res>? get dimensions {
    if (_self.dimensions == null) {
    return null;
  }

  return $DimensionsCopyWith<$Res>(_self.dimensions!, (value) {
    return _then(_self.copyWith(dimensions: value));
  });
}/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$Dimensions {

 double get width; double get height; double get depth;
/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DimensionsCopyWith<Dimensions> get copyWith => _$DimensionsCopyWithImpl<Dimensions>(this as Dimensions, _$identity);

  /// Serializes this Dimensions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString() {
  return 'Dimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class $DimensionsCopyWith<$Res>  {
  factory $DimensionsCopyWith(Dimensions value, $Res Function(Dimensions) _then) = _$DimensionsCopyWithImpl;
@useResult
$Res call({
 double width, double height, double depth
});




}
/// @nodoc
class _$DimensionsCopyWithImpl<$Res>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._self, this._then);

  final Dimensions _self;
  final $Res Function(Dimensions) _then;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? depth = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Dimensions implements Dimensions {
  const _Dimensions({this.width = 0, this.height = 0, this.depth = 0});
  factory _Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

@override@JsonKey() final  double width;
@override@JsonKey() final  double height;
@override@JsonKey() final  double depth;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DimensionsCopyWith<_Dimensions> get copyWith => __$DimensionsCopyWithImpl<_Dimensions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DimensionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString() {
  return 'Dimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class _$DimensionsCopyWith<$Res> implements $DimensionsCopyWith<$Res> {
  factory _$DimensionsCopyWith(_Dimensions value, $Res Function(_Dimensions) _then) = __$DimensionsCopyWithImpl;
@override @useResult
$Res call({
 double width, double height, double depth
});




}
/// @nodoc
class __$DimensionsCopyWithImpl<$Res>
    implements _$DimensionsCopyWith<$Res> {
  __$DimensionsCopyWithImpl(this._self, this._then);

  final _Dimensions _self;
  final $Res Function(_Dimensions) _then;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? depth = null,}) {
  return _then(_Dimensions(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,depth: null == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Meta {

 String get createdAt; String get updatedAt; String get barcode; String get qrCode;
/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaCopyWith<Meta> get copyWith => _$MetaCopyWithImpl<Meta>(this as Meta, _$identity);

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meta&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,barcode,qrCode);

@override
String toString() {
  return 'Meta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class $MetaCopyWith<$Res>  {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) _then) = _$MetaCopyWithImpl;
@useResult
$Res call({
 String createdAt, String updatedAt, String barcode, String qrCode
});




}
/// @nodoc
class _$MetaCopyWithImpl<$Res>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._self, this._then);

  final Meta _self;
  final $Res Function(Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = null,Object? barcode = null,Object? qrCode = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Meta implements Meta {
  const _Meta({this.createdAt = '', this.updatedAt = '', this.barcode = '', this.qrCode = ''});
  factory _Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

@override@JsonKey() final  String createdAt;
@override@JsonKey() final  String updatedAt;
@override@JsonKey() final  String barcode;
@override@JsonKey() final  String qrCode;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaCopyWith<_Meta> get copyWith => __$MetaCopyWithImpl<_Meta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meta&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,barcode,qrCode);

@override
String toString() {
  return 'Meta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$MetaCopyWith(_Meta value, $Res Function(_Meta) _then) = __$MetaCopyWithImpl;
@override @useResult
$Res call({
 String createdAt, String updatedAt, String barcode, String qrCode
});




}
/// @nodoc
class __$MetaCopyWithImpl<$Res>
    implements _$MetaCopyWith<$Res> {
  __$MetaCopyWithImpl(this._self, this._then);

  final _Meta _self;
  final $Res Function(_Meta) _then;

/// Create a copy of Meta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = null,Object? barcode = null,Object? qrCode = null,}) {
  return _then(_Meta(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,qrCode: null == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Review {

 int get rating; String get comment; String get date; String get reviewerName; String get reviewerEmail;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.reviewerEmail, reviewerEmail) || other.reviewerEmail == reviewerEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,date,reviewerName,reviewerEmail);

@override
String toString() {
  return 'Review(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 int rating, String comment, String date, String reviewerName, String reviewerEmail
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? comment = null,Object? date = null,Object? reviewerName = null,Object? reviewerEmail = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,reviewerEmail: null == reviewerEmail ? _self.reviewerEmail : reviewerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({this.rating = 0, this.comment = '', this.date = '', this.reviewerName = '', this.reviewerEmail = ''});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override@JsonKey() final  int rating;
@override@JsonKey() final  String comment;
@override@JsonKey() final  String date;
@override@JsonKey() final  String reviewerName;
@override@JsonKey() final  String reviewerEmail;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.date, date) || other.date == date)&&(identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName)&&(identical(other.reviewerEmail, reviewerEmail) || other.reviewerEmail == reviewerEmail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,comment,date,reviewerName,reviewerEmail);

@override
String toString() {
  return 'Review(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 int rating, String comment, String date, String reviewerName, String reviewerEmail
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? comment = null,Object? date = null,Object? reviewerName = null,Object? reviewerEmail = null,}) {
  return _then(_Review(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,reviewerName: null == reviewerName ? _self.reviewerName : reviewerName // ignore: cast_nullable_to_non_nullable
as String,reviewerEmail: null == reviewerEmail ? _self.reviewerEmail : reviewerEmail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
