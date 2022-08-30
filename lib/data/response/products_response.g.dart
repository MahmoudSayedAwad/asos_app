// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    ProductsResponse(
      searchTerm: json['searchTerm'] as String?,
      categoryName: json['categoryName'] as String?,
      itemCount: json['itemCount'] as int?,
      redirectUrl: json['redirectUrl'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      facets: (json['facets'] as List<dynamic>?)
          ?.map((e) => FacetsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnostics: json['diagnostics'] == null
          ? null
          : DiagnosticsResponse.fromJson(
              json['diagnostics'] as Map<String, dynamic>),
      searchPassMeta: json['searchPassMeta'] == null
          ? null
          : SearchPassMetaResponse.fromJson(
              json['searchPassMeta'] as Map<String, dynamic>),
      queryId: json['queryId'] as String?,
    );

Map<String, dynamic> _$ProductsResponseToJson(ProductsResponse instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'categoryName': instance.categoryName,
      'itemCount': instance.itemCount,
      'redirectUrl': instance.redirectUrl,
      'products': instance.products,
      'facets': instance.facets,
      'diagnostics': instance.diagnostics,
      'searchPassMeta': instance.searchPassMeta,
      'queryId': instance.queryId,
    };

SearchPassMetaResponse _$SearchPassMetaResponseFromJson(
        Map<String, dynamic> json) =>
    SearchPassMetaResponse(
      isPartial: json['isPartial'] as bool?,
      isSpellcheck: json['isSpellcheck'] as bool?,
    );

Map<String, dynamic> _$SearchPassMetaResponseToJson(
        SearchPassMetaResponse instance) =>
    <String, dynamic>{
      'isPartial': instance.isPartial,
      'isSpellcheck': instance.isSpellcheck,
    };

DiagnosticsResponse _$DiagnosticsResponseFromJson(Map<String, dynamic> json) =>
    DiagnosticsResponse(
      requestId: json['requestId'] as String?,
      processingTime: json['processingTime'] as int?,
      queryTime: json['queryTime'] as int?,
      recommendationsEnabled: json['recommendationsEnabled'] as bool?,
      recommendationsAnalytics: json['recommendationsAnalytics'] == null
          ? null
          : RecommendationsAnalyticsResponse.fromJson(
              json['recommendationsAnalytics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiagnosticsResponseToJson(
        DiagnosticsResponse instance) =>
    <String, dynamic>{
      'requestId': instance.requestId,
      'processingTime': instance.processingTime,
      'queryTime': instance.queryTime,
      'recommendationsEnabled': instance.recommendationsEnabled,
      'recommendationsAnalytics': instance.recommendationsAnalytics,
    };

RecommendationsAnalyticsResponse _$RecommendationsAnalyticsResponseFromJson(
        Map<String, dynamic> json) =>
    RecommendationsAnalyticsResponse(
      personalisationStatus: json['personalisationStatus'] as int?,
      numberOfItems: json['numberOfItems'] as int?,
      numberOfRecs: json['numberOfRecs'] as int?,
      personalisationType: json['personalisationType'] as String?,
    );

Map<String, dynamic> _$RecommendationsAnalyticsResponseToJson(
        RecommendationsAnalyticsResponse instance) =>
    <String, dynamic>{
      'personalisationStatus': instance.personalisationStatus,
      'numberOfItems': instance.numberOfItems,
      'numberOfRecs': instance.numberOfRecs,
      'personalisationType': instance.personalisationType,
    };

FacetsResponse _$FacetsResponseFromJson(Map<String, dynamic> json) =>
    FacetsResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      facetValues: (json['facetValues'] as List<dynamic>?)
          ?.map((e) => FacetValuesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayStyle: json['displayStyle'] as String?,
      facetType: json['facetType'] as String?,
      hasSelectedValues: json['hasSelectedValues'] as bool?,
    );

Map<String, dynamic> _$FacetsResponseToJson(FacetsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'facetValues': instance.facetValues,
      'displayStyle': instance.displayStyle,
      'facetType': instance.facetType,
      'hasSelectedValues': instance.hasSelectedValues,
    };

FacetValuesResponse _$FacetValuesResponseFromJson(Map<String, dynamic> json) =>
    FacetValuesResponse(
      count: json['count'] as int?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$FacetValuesResponseToJson(
        FacetValuesResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'id': instance.id,
      'name': instance.name,
      'isSelected': instance.isSelected,
    };

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: json['price'] == null
          ? null
          : PriceResponse.fromJson(json['price'] as Map<String, dynamic>),
      colour: json['colour'] as String?,
      colourWayId: json['colourWayId'] as int?,
      brandName: json['brandName'] as String?,
      hasVariantColours: json['hasVariantColours'] as bool?,
      hasMultiplePrices: json['hasMultiplePrices'] as bool?,
      groupId: json['groupId'],
      productCode: json['productCode'] as int?,
      productType: json['productType'] as String?,
      url: json['url'] as String?,
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      isSellingFast: json['isSellingFast'] as bool?,
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'colour': instance.colour,
      'colourWayId': instance.colourWayId,
      'brandName': instance.brandName,
      'hasVariantColours': instance.hasVariantColours,
      'hasMultiplePrices': instance.hasMultiplePrices,
      'groupId': instance.groupId,
      'productCode': instance.productCode,
      'productType': instance.productType,
      'url': instance.url,
      'imageUrl': instance.imageUrl,
      'videoUrl': instance.videoUrl,
      'isSellingFast': instance.isSellingFast,
    };

PriceResponse _$PriceResponseFromJson(Map<String, dynamic> json) =>
    PriceResponse(
      current: json['current'] == null
          ? null
          : CurrentResponse.fromJson(json['current'] as Map<String, dynamic>),
      previous: json['previous'] == null
          ? null
          : PreviousResponse.fromJson(json['previous'] as Map<String, dynamic>),
      rrp: json['rrp'] == null
          ? null
          : RrpResponse.fromJson(json['rrp'] as Map<String, dynamic>),
      isMarkedDown: json['isMarkedDown'] as bool?,
      isOutletPrice: json['isOutletPrice'] as bool?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$PriceResponseToJson(PriceResponse instance) =>
    <String, dynamic>{
      'current': instance.current,
      'previous': instance.previous,
      'rrp': instance.rrp,
      'isMarkedDown': instance.isMarkedDown,
      'isOutletPrice': instance.isOutletPrice,
      'currency': instance.currency,
    };

RrpResponse _$RrpResponseFromJson(Map<String, dynamic> json) => RrpResponse(
      value: (json['value'] as num?)?.toDouble(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$RrpResponseToJson(RrpResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };

PreviousResponse _$PreviousResponseFromJson(Map<String, dynamic> json) =>
    PreviousResponse(
      value: (json['value'] as num?)?.toDouble(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$PreviousResponseToJson(PreviousResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };

CurrentResponse _$CurrentResponseFromJson(Map<String, dynamic> json) =>
    CurrentResponse(
      value: (json['value'] as num?)?.toDouble(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$CurrentResponseToJson(CurrentResponse instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };
