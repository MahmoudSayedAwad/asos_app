import 'package:json_annotation/json_annotation.dart';
part 'similarities_response.g.dart';

@JsonSerializable()
class SimilaritiesResponse {
  SimilaritiesResponse({
    this.id,
    this.products,
    this.navigateUrl,
    this.baseUrl,
  });

  int? id;

  List<SimilarProductsResponse>? products;
  String? navigateUrl;
  String? baseUrl;

// toJson
  Map<String, dynamic> toJson() => _$SimilaritiesResponseToJson(this);

//fromJson
  factory SimilaritiesResponse.fromJson(Map<String, dynamic> json) =>
      _$SimilaritiesResponseFromJson(json);
}

@JsonSerializable()
class SimilarProductsResponse {
  SimilarProductsResponse({
    this.order,
    this.product,
  });

  int? order;
  ProductResponse? product;

// toJson
  Map<String, dynamic> toJson() => _$SimilarProductsResponseToJson(this);

//fromJson
  factory SimilarProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$SimilarProductsResponseFromJson(json);
}

@JsonSerializable()
class ProductResponse {
  ProductResponse({
    this.id,
    this.name,
    this.brandName,
    this.images,
    this.price,
    this.sizeGuide,
    this.isNoSize,
    this.isOneSize,
    this.isInStock,
    this.hasMultipleColoursInStock,
    this.hasMultiplePricesInStock,
    this.isAvailable,
    this.productCode,
    this.colour,
    this.variants,
    this.shippingRestriction,
    this.navigateUrl,
    this.rating,
    this.localisedData,
  });

  int? id;
  String? name;
  String? brandName;
  List<ImagesResponse>? images;
  PriceResponse? price;
  String? sizeGuide;
  bool? isNoSize;
  bool? isOneSize;
  bool? isInStock;
  bool? hasMultipleColoursInStock;
  bool? hasMultiplePricesInStock;
  bool? isAvailable;
  String? productCode;
  String? colour;
  List<VariantsResponse>? variants;
  String? shippingRestriction;
  String? navigateUrl;
  String? rating;
  String? localisedData;

// toJson
  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

//fromJson
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@JsonSerializable()
class VariantsResponse {
  VariantsResponse(
    this.id,
    this.name,
    this.sizeId,
    this.brandSize,
    this.sizeDescription,
    this.displaySizeText,
    this.sizeOrder,
    this.sku,
    this.isLowInStock,
    this.isInStock,
    this.isAvailable,
    this.colourWayId,
    this.colourCode,
    this.colour,
    this.price,
    this.isPrimary,
    this.isProp65Risk,
    this.ean,
    this.seller,
  );

  int? id;
  String? name;
  int? sizeId;
  String? brandSize;
  String? sizeDescription;
  String? displaySizeText;
  int? sizeOrder;
  String? sku;
  bool? isLowInStock;
  bool? isInStock;
  bool? isAvailable;
  int? colourWayId;
  String? colourCode;
  String? colour;
  PriceResponse? price;
  bool? isPrimary;
  bool? isProp65Risk;
  String? ean;
  String? seller;
  // toJson
  Map<String, dynamic> toJson() => _$VariantsResponseToJson(this);

//fromJson
  factory VariantsResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantsResponseFromJson(json);
}

@JsonSerializable()
class PriceResponse {
  PriceResponse(
    this.current,
    this.previous,
    this.rrp,
    this.xrp,
    this.currency,
    this.isMarkedDown,
    this.isOutletPrice,
    this.startDateTime,
  );

  CurrentResponse? current;
  PreviousResponse? previous;
  RrpResponse? rrp;
  XrpResponse? xrp;
  String? currency;
  bool? isMarkedDown;
  bool? isOutletPrice;
  String? startDateTime;
  // toJson
  Map<String, dynamic> toJson() => _$PriceResponseToJson(this);

//fromJson
  factory PriceResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceResponseFromJson(json);
}

@JsonSerializable()
class XrpResponse {
  XrpResponse(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );

  double? value;
  String? text;
  String? versionId;
  String? conversionId;
  // toJson
  Map<String, dynamic> toJson() => _$XrpResponseToJson(this);

//fromJson
  factory XrpResponse.fromJson(Map<String, dynamic> json) =>
      _$XrpResponseFromJson(json);
}

@JsonSerializable()
class RrpResponse {
  RrpResponse(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );

  double? value;
  String? text;
  String? versionId;
  String? conversionId;
  // toJson
  Map<String, dynamic> toJson() => _$RrpResponseToJson(this);

//fromJson
  factory RrpResponse.fromJson(Map<String, dynamic> json) =>
      _$RrpResponseFromJson(json);
}

@JsonSerializable()
class PreviousResponse {
  PreviousResponse({
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  });

  double? value;
  String? text;
  String? versionId;
  String? conversionId;
  // toJson
  Map<String, dynamic> toJson() => _$PreviousResponseToJson(this);

//fromJson
  factory PreviousResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviousResponseFromJson(json);
}

@JsonSerializable()
class CurrentResponse {
  CurrentResponse(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );

  double? value;
  String? text;
  String? versionId;
  String? conversionId;
  // toJson
  Map<String, dynamic> toJson() => _$CurrentResponseToJson(this);

//fromJson
  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);
}

@JsonSerializable()
class ImagesResponse {
  ImagesResponse(
    this.url,
    this.type,
    this.colourWayId,
    this.colourCode,
    this.colour,
    this.isPrimary,
  );

  String? url;
  String? type;
  int? colourWayId;
  String? colourCode;
  String? colour;
  bool? isPrimary;
  // toJson
  Map<String, dynamic> toJson() => _$ImagesResponseToJson(this);

//fromJson
  factory ImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$ImagesResponseFromJson(json);
}
