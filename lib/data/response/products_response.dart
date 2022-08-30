import 'package:json_annotation/json_annotation.dart';
part 'products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  ProductsResponse({
    this.searchTerm,
    this.categoryName,
    this.itemCount,
    this.redirectUrl,
    this.products,
    this.facets,
    this.diagnostics,
    this.searchPassMeta,
    this.queryId,
    // this.discoverSearchProductTypes,
    // this.campaigns,
  });

  String? searchTerm;
  String? categoryName;
  int? itemCount;
  String? redirectUrl;
  List<ProductResponse>? products;
  List<FacetsResponse>? facets;
  DiagnosticsResponse? diagnostics;
  SearchPassMetaResponse? searchPassMeta;
  String? queryId;
  // toJson
  Map<String, dynamic> toJson() => _$ProductsResponseToJson(this);

//fromJson
  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}

@JsonSerializable()
class SearchPassMetaResponse {
  SearchPassMetaResponse({
    this.isPartial,
    this.isSpellcheck,
  });

  bool? isPartial;
  bool? isSpellcheck;
//List<dynamic>? searchPass;
//List<dynamic>? alternateSearchTerms;
  // toJson
  Map<String, dynamic> toJson() => _$SearchPassMetaResponseToJson(this);

//fromJson
  factory SearchPassMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPassMetaResponseFromJson(json);
}

@JsonSerializable()
class DiagnosticsResponse {
  DiagnosticsResponse({
    this.requestId,
    this.processingTime,
    this.queryTime,
    this.recommendationsEnabled,
    this.recommendationsAnalytics,
  });

  String? requestId;
  int? processingTime;
  int? queryTime;
  bool? recommendationsEnabled;
  RecommendationsAnalyticsResponse? recommendationsAnalytics;
  // toJson
  Map<String, dynamic> toJson() => _$DiagnosticsResponseToJson(this);

//fromJson
  factory DiagnosticsResponse.fromJson(Map<String, dynamic> json) =>
      _$DiagnosticsResponseFromJson(json);
}

@JsonSerializable()
class RecommendationsAnalyticsResponse {
  RecommendationsAnalyticsResponse({
    this.personalisationStatus,
    this.numberOfItems,
    this.numberOfRecs,
    this.personalisationType,
    //this.items,
  });

  int? personalisationStatus;
  int? numberOfItems;
  int? numberOfRecs;
  String? personalisationType;
//List<dynamic>? items;
  // toJson
  Map<String, dynamic> toJson() =>
      _$RecommendationsAnalyticsResponseToJson(this);

//fromJson
  factory RecommendationsAnalyticsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$RecommendationsAnalyticsResponseFromJson(json);
}

@JsonSerializable()
class FacetsResponse {
  FacetsResponse({
    this.id,
    this.name,
    this.facetValues,
    this.displayStyle,
    this.facetType,
    this.hasSelectedValues,
  });

  String? id;
  String? name;
  List<FacetValuesResponse>? facetValues;
  String? displayStyle;
  String? facetType;
  bool? hasSelectedValues;
  // toJson
  Map<String, dynamic> toJson() => _$FacetsResponseToJson(this);

//fromJson
  factory FacetsResponse.fromJson(Map<String, dynamic> json) =>
      _$FacetsResponseFromJson(json);
}

@JsonSerializable()
class FacetValuesResponse {
  FacetValuesResponse({
    this.count,
    this.id,
    this.name,
    this.isSelected,
  });

  int? count;
  String? id;
  String? name;
  bool? isSelected;
  // toJson
  Map<String, dynamic> toJson() => _$FacetValuesResponseToJson(this);

//fromJson
  factory FacetValuesResponse.fromJson(Map<String, dynamic> json) =>
      _$FacetValuesResponseFromJson(json);
}

@JsonSerializable()
class ProductResponse {
  ProductResponse({
    this.id,
    this.name,
    this.price,
    this.colour,
    this.colourWayId,
    this.brandName,
    this.hasVariantColours,
    this.hasMultiplePrices,
    this.groupId,
    this.productCode,
    this.productType,
    this.url,
    this.imageUrl,
    this.videoUrl,
    this.isSellingFast,
  });

  int? id;
  String? name;
  PriceResponse? price;
  String? colour;
  int? colourWayId;
  String? brandName;
  bool? hasVariantColours;
  bool? hasMultiplePrices;
  dynamic groupId;
  int? productCode;
  String? productType;
  String? url;
  String? imageUrl;
  String? videoUrl;
  bool? isSellingFast;
  // toJson
  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

//fromJson
  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@JsonSerializable()
class PriceResponse {
  PriceResponse({
    this.current,
    this.previous,
    this.rrp,
    this.isMarkedDown,
    this.isOutletPrice,
    this.currency,
  });

  CurrentResponse? current;
  PreviousResponse? previous;
  RrpResponse? rrp;
  bool? isMarkedDown;
  bool? isOutletPrice;
  String? currency;
  // toJson
  Map<String, dynamic> toJson() => _$PriceResponseToJson(this);

//fromJson
  factory PriceResponse.fromJson(Map<String, dynamic> json) =>
      _$PriceResponseFromJson(json);
}

@JsonSerializable()
class RrpResponse {
  RrpResponse({
    this.value,
    this.text,
  });

  double? value;
  String? text;
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
  });

  double? value;
  String? text;
  // toJson
  Map<String, dynamic> toJson() => _$PreviousResponseToJson(this);

//fromJson
  factory PreviousResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviousResponseFromJson(json);
}

@JsonSerializable()
class CurrentResponse {
  CurrentResponse({
    this.value,
    this.text,
  });

  double? value;
  String? text;
  // toJson
  Map<String, dynamic> toJson() => _$CurrentResponseToJson(this);

//fromJson
  factory CurrentResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrentResponseFromJson(json);
}
