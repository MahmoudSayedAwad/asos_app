// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similarities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimilaritiesResponse _$SimilaritiesResponseFromJson(
        Map<String, dynamic> json) =>
    SimilaritiesResponse(
      id: json['id'] as int?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) =>
              SimilarProductsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      navigateUrl: json['navigateUrl'] as String?,
      baseUrl: json['baseUrl'] as String?,
    );

Map<String, dynamic> _$SimilaritiesResponseToJson(
        SimilaritiesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'navigateUrl': instance.navigateUrl,
      'baseUrl': instance.baseUrl,
    };

SimilarProductsResponse _$SimilarProductsResponseFromJson(
        Map<String, dynamic> json) =>
    SimilarProductsResponse(
      order: json['order'] as int?,
      product: json['product'] == null
          ? null
          : ProductResponse.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SimilarProductsResponseToJson(
        SimilarProductsResponse instance) =>
    <String, dynamic>{
      'order': instance.order,
      'product': instance.product,
    };

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      brandName: json['brandName'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] == null
          ? null
          : PriceResponse.fromJson(json['price'] as Map<String, dynamic>),
      sizeGuide: json['sizeGuide'] as String?,
      isNoSize: json['isNoSize'] as bool?,
      isOneSize: json['isOneSize'] as bool?,
      isInStock: json['isInStock'] as bool?,
      hasMultipleColoursInStock: json['hasMultipleColoursInStock'] as bool?,
      hasMultiplePricesInStock: json['hasMultiplePricesInStock'] as bool?,
      isAvailable: json['isAvailable'] as bool?,
      productCode: json['productCode'] as String?,
      colour: json['colour'] as String?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => VariantsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingRestriction: json['shippingRestriction'] as String?,
      navigateUrl: json['navigateUrl'] as String?,
      rating: json['rating'] as String?,
      localisedData: json['localisedData'] as String?,
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brandName': instance.brandName,
      'images': instance.images,
      'price': instance.price,
      'sizeGuide': instance.sizeGuide,
      'isNoSize': instance.isNoSize,
      'isOneSize': instance.isOneSize,
      'isInStock': instance.isInStock,
      'hasMultipleColoursInStock': instance.hasMultipleColoursInStock,
      'hasMultiplePricesInStock': instance.hasMultiplePricesInStock,
      'isAvailable': instance.isAvailable,
      'productCode': instance.productCode,
      'colour': instance.colour,
      'variants': instance.variants,
      'shippingRestriction': instance.shippingRestriction,
      'navigateUrl': instance.navigateUrl,
      'rating': instance.rating,
      'localisedData': instance.localisedData,
    };

VariantsResponse _$VariantsResponseFromJson(Map<String, dynamic> json) =>
    VariantsResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['sizeId'] as int?,
      json['brandSize'] as String?,
      json['sizeDescription'] as String?,
      json['displaySizeText'] as String?,
      json['sizeOrder'] as int?,
      json['sku'] as String?,
      json['isLowInStock'] as bool?,
      json['isInStock'] as bool?,
      json['isAvailable'] as bool?,
      json['colourWayId'] as int?,
      json['colourCode'] as String?,
      json['colour'] as String?,
      json['price'] == null
          ? null
          : PriceResponse.fromJson(json['price'] as Map<String, dynamic>),
      json['isPrimary'] as bool?,
      json['isProp65Risk'] as bool?,
      json['ean'] as String?,
      json['seller'] as String?,
    );

Map<String, dynamic> _$VariantsResponseToJson(VariantsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sizeId': instance.sizeId,
      'brandSize': instance.brandSize,
      'sizeDescription': instance.sizeDescription,
      'displaySizeText': instance.displaySizeText,
      'sizeOrder': instance.sizeOrder,
      'sku': instance.sku,
      'isLowInStock': instance.isLowInStock,
      'isInStock': instance.isInStock,
      'isAvailable': instance.isAvailable,
      'colourWayId': instance.colourWayId,
      'colourCode': instance.colourCode,
      'colour': instance.colour,
      'price': instance.price,
      'isPrimary': instance.isPrimary,
      'isProp65Risk': instance.isProp65Risk,
      'ean': instance.ean,
      'seller': instance.seller,
    };

PriceResponse _$PriceResponseFromJson(Map<String, dynamic> json) =>
    PriceResponse(
      json['current'] == null
          ? null
          : CurrentResponse.fromJson(json['current'] as Map<String, dynamic>),
      json['previous'] == null
          ? null
          : PreviousResponse.fromJson(json['previous'] as Map<String, dynamic>),
      json['rrp'] == null
          ? null
          : RrpResponse.fromJson(json['rrp'] as Map<String, dynamic>),
      json['xrp'] == null
          ? null
          : XrpResponse.fromJson(json['xrp'] as Map<String, dynamic>),
      json['currency'] as String?,
      json['isMarkedDown'] as bool?,
      json['isOutletPrice'] as bool?,
      json['startDateTime'] as String?,
    );

Map<String, dynamic> _$PriceResponseToJson(PriceResponse instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
      'rrp': instance.rrp,
      'xrp': instance.xrp,
      'currency': instance.currency,
      'isMarkedDown': instance.isMarkedDown,
      'isOutletPrice': instance.isOutletPrice,
      'startDateTime': instance.startDateTime,
    };

XrpResponse _$XrpResponseFromJson(Map<String, dynamic> json) => XrpResponse(
      (json['value'] as num?)?.toDouble(),
      json['text'] as String?,
      json['versionId'] as String?,
      json['conversionId'] as String?,
    );

Map<String, dynamic> _$XrpResponseToJson(XrpResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'versionId': instance.versionId,
      'conversionId': instance.conversionId,
    };

RrpResponse _$RrpResponseFromJson(Map<String, dynamic> json) => RrpResponse(
      (json['value'] as num?)?.toDouble(),
      json['text'] as String?,
      json['versionId'] as String?,
      json['conversionId'] as String?,
    );

Map<String, dynamic> _$RrpResponseToJson(RrpResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'versionId': instance.versionId,
      'conversionId': instance.conversionId,
    };

PreviousResponse _$PreviousResponseFromJson(Map<String, dynamic> json) =>
    PreviousResponse(
      value: (json['value'] as num?)?.toDouble(),
      text: json['text'] as String?,
      versionId: json['versionId'] as String?,
      conversionId: json['conversionId'] as String?,
    );

Map<String, dynamic> _$PreviousResponseToJson(PreviousResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'versionId': instance.versionId,
      'conversionId': instance.conversionId,
    };

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) =>
    CurrentResponse(
      (json['value'] as num?)?.toDouble(),
      json['text'] as String?,
      json['versionId'] as String?,
      json['conversionId'] as String?,
    );

Map<String, dynamic> _$CurrentResponseToJson(CurrentResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
      'versionId': instance.versionId,
      'conversionId': instance.conversionId,
    };

ImagesResponse _$ImagesResponseFromJson(Map<String, dynamic> json) =>
    ImagesResponse(
      json['url'] as String?,
      json['type'] as String?,
      json['colourWayId'] as int?,
      json['colourCode'] as String?,
      json['colour'] as String?,
      json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$ImagesResponseToJson(ImagesResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'type': instance.type,
      'colourWayId': instance.colourWayId,
      'colourCode': instance.colourCode,
      'colour': instance.colour,
      'isPrimary': instance.isPrimary,
    };
