import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

//categories
@JsonSerializable()
class CategoriesResponse {
  CategoriesResponse(
    this.navigation,
    this.brands,
    this.footer,
  );

  List<NavigationResponse>? navigation;
  List<BrandsResponse>? brands;
  List<FooterResponse>? footer;
  // toJson
  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);

//fromJson
  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}

@JsonSerializable()
class NavigationResponse {
  NavigationResponse(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
    //  this.display,
    this.style,
    this.link,
    this.children,
  );

  String? id;
  String? alias;
  String? type;
  int? webLargePriority;
  ContentResponse? content;
  // DisplayResponse? display;
  StyleResponse? style;
  LinkResponse? link;
  List<ChildrenResponse>? children;

  // toJson
  Map<String, dynamic> toJson() => _$NavigationResponseToJson(this);

//fromJson
  factory NavigationResponse.fromJson(Map<String, dynamic> json) =>
      _$NavigationResponseFromJson(json);
}

@JsonSerializable()
class BrandsResponse {
  BrandsResponse(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );

  String? id;
  String? alias;
  String? type;

  int? webLargePriority;
  ContentResponse? content;
  DisplayResponse? display;
  StyleResponse? style;
  LinkResponse? link;
  List<ChildrenResponse>? children;
  // toJson
  Map<String, dynamic> toJson() => _$BrandsResponseToJson(this);

//fromJson
  factory BrandsResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandsResponseFromJson(json);
}

@JsonSerializable()
class FooterResponse {
  FooterResponse(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );

  String? id;
  String? alias;
  String? type;

  int? webLargePriority;
  ContentResponse? content;
  DisplayResponse? display;
  StyleResponse? style;
  LinkResponse? link;
  List<ChildrenResponse>? children;

  // toJson
  Map<String, dynamic> toJson() => _$FooterResponseToJson(this);

//fromJson
  factory FooterResponse.fromJson(Map<String, dynamic> json) =>
      _$FooterResponseFromJson(json);
}

@JsonSerializable()
class ChildrenResponse {
  ChildrenResponse(
    this.id,
    this.alias,
    this.type,
    this.channelExclusions,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );

  String? id;
  String? alias;
  String? type;
  List<String>? channelExclusions;
  int? webLargePriority;
  ContentResponse? content;
  DisplayResponse? display;
  StyleResponse? style;
  LinkResponse? link;
  List<ChildrenResponse>? children;
  // toJson
  Map<String, dynamic> toJson() => _$ChildrenResponseToJson(this);

//fromJson
  factory ChildrenResponse.fromJson(Map<String, dynamic> json) =>
      _$ChildrenResponseFromJson(json);
}

@JsonSerializable()
class LinkResponse {
  LinkResponse(
    this.linkType,
    this.brandSectionAlias,
    this.categoryId,
    this.webUrl,
    this.appUrl,
  );
  String? linkType;
  String? brandSectionAlias;
  int? categoryId;
  String? webUrl;
  String? appUrl;
  // toJson
  Map<String, dynamic> toJson() => _$LinkResponseToJson(this);

//fromJson
  factory LinkResponse.fromJson(Map<String, dynamic> json) =>
      _$LinkResponseFromJson(json);
}

@JsonSerializable()
class StyleResponse {
  StyleResponse(
    this.webLargeStyleType,
    this.mobileStyleType,
  );

  String? webLargeStyleType;
  String? mobileStyleType;
  // toJson
  Map<String, dynamic> toJson() => _$StyleResponseToJson(this);

//fromJson
  factory StyleResponse.fromJson(Map<String, dynamic> json) =>
      _$StyleResponseFromJson(json);
}

@JsonSerializable()
class ContentResponse {
  ContentResponse(
    this.title,
    this.subTitle,
    this.webLargeImageUrl,
    this.mobileImageUrl,
  );

  String? title;
  String? subTitle;
  String? webLargeImageUrl;
  String? mobileImageUrl;
  // toJson
  Map<String, dynamic> toJson() => _$ContentResponseToJson(this);

//fromJson
  factory ContentResponse.fromJson(Map<String, dynamic> json) =>
      _$ContentResponseFromJson(json);
}

@JsonSerializable()
class DisplayResponse {
  DisplayResponse(
    this.webLargeTemplateId,
    this.webLargeTemplateName,
    this.webLargeColumnSpan,
    this.mobileTemplateId,
    this.mobileTemplateName,
    this.mobileDisplayLayout,
  );

  int? webLargeTemplateId;
  String? webLargeTemplateName;
  int? webLargeColumnSpan;
  int? mobileTemplateId;
  String? mobileTemplateName;
  String? mobileDisplayLayout;
  // toJson
  Map<String, dynamic> toJson() => _$DisplayResponseToJson(this);

//fromJson
  factory DisplayResponse.fromJson(Map<String, dynamic> json) =>
      _$DisplayResponseFromJson(json);
}

//////////////////////////////////////////////////
//auto Complete
@JsonSerializable()
class AutoCompleteResponse {
  AutoCompleteResponse(this.suggestionGroups);

  List<SuggestionGroupsResponse>? suggestionGroups;
  // toJson
  Map<String, dynamic> toJson() => _$AutoCompleteResponseToJson(this);

//fromJson
  factory AutoCompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteResponseFromJson(json);
}

@JsonSerializable()
class SuggestionGroupsResponse {
  SuggestionGroupsResponse(
    this.indexName,
    this.indexTitle,
    this.suggestions,
  );

  String? indexName;
  String? indexTitle;
  List<SuggestionsResponse>? suggestions;

  // toJson
  Map<String, dynamic> toJson() => _$SuggestionGroupsResponseToJson(this);

//fromJson
  factory SuggestionGroupsResponse.fromJson(Map<String, dynamic> json) =>
      _$SuggestionGroupsResponseFromJson(json);
}

@JsonSerializable()
class SuggestionsResponse {
  SuggestionsResponse(this.searchTerm, this.numberOfResults);

  String? searchTerm;
  int? numberOfResults;

  // toJson
  Map<String, dynamic> toJson() => _$SuggestionsResponseToJson(this);

//fromJson
  factory SuggestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SuggestionsResponseFromJson(json);
}

///////////////////////////////////////////////////////////////////////////////
//countries

@JsonSerializable()
class CountryResponse {
  CountryResponse(
      this.country,
      this.store,
      this.name,
      this.imageUrl,
      this.siteUrl,
      this.siteId,
      this.majorCountry,
      this.isDefaultCountry,
      this.region,
      this.legalEntity,
      this.languages,
      this.currencies,
      this.sizeSchemas);

  String? country;
  String? store;
  String? name;
  String? imageUrl;
  String? siteUrl;
  int? siteId;
  String? majorCountry;
  bool? isDefaultCountry;
  String? region;
  String? legalEntity;
  List<LanguagesResponse>? languages;
  List<CurrenciesResponse>? currencies;
  List<SizeSchemasResponse>? sizeSchemas;
  // toJson
  Map<String, dynamic> toJson() => _$CountryResponseToJson(this);

//fromJson
  factory CountryResponse.fromJson(Map<String, dynamic> json) =>
      _$CountryResponseFromJson(json);
}

@JsonSerializable()
class SizeSchemasResponse {
  SizeSchemasResponse(
    this.sizeSchema,
    this.text,
    this.isPrimary,
  );

  String? sizeSchema;
  String? text;
  bool? isPrimary;

  // toJson
  Map<String, dynamic> toJson() => _$SizeSchemasResponseToJson(this);

//fromJson
  factory SizeSchemasResponse.fromJson(Map<String, dynamic> json) =>
      _$SizeSchemasResponseFromJson(json);
}

@JsonSerializable()
class CurrenciesResponse {
  CurrenciesResponse(
    this.currency,
    this.symbol,
    this.text,
    this.isPrimary,
    this.currencyId,
  );

  String? currency;
  String? symbol;
  String? text;
  bool? isPrimary;
  int? currencyId;
  // toJson
  Map<String, dynamic> toJson() => _$CurrenciesResponseToJson(this);

//fromJson
  factory CurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesResponseFromJson(json);
}

@JsonSerializable()
class LanguagesResponse {
  LanguagesResponse(
    this.language,
    this.name,
    this.text,
    this.languageShort,
    this.isPrimary,
  );

  String? language;
  String? name;
  String? text;
  String? languageShort;
  bool? isPrimary;
  // toJson
  Map<String, dynamic> toJson() => _$LanguagesResponseToJson(this);

//fromJson
  factory LanguagesResponse.fromJson(Map<String, dynamic> json) =>
      _$LanguagesResponseFromJson(json);
}

////////////////////////////////////////////////////////////////////////////////
//product details
@JsonSerializable()
class ProductDetailsResponse {
  ProductDetailsResponse(
    this.id,
    this.name,
    this.description,
    this.alternateNames,
    this.localisedData,
    this.gender,
    this.productCode,
    this.pdpLayout,
    this.brand,
    this.sizeGuide,
    this.sizeGuideApiUrl,
    this.isNoSize,
    this.isOneSize,
    this.isInStock,
    this.countryOfManufacture,
    this.hasVariantsWithProp65Risk,
    this.webCategories,
    this.variants,
    this.media,
    //  this.badges,
    this.info,
    this.shippingRestriction,
    this.price,
    this.isDeadProduct,
    this.rating,
    this.productType,
    // this.plpIds,
    this.baseUrl,
  );

  int? id;
  String? name;
  String? description;
  List<AlternateNamesResponse>? alternateNames;
  List<LocalisedDataResponse>? localisedData;
  String? gender;
  String? productCode;
  String? pdpLayout;
  BrandResponse? brand;
  String? sizeGuide;
  String? sizeGuideApiUrl;
  bool? isNoSize;
  bool? isOneSize;
  bool? isInStock;
  String? countryOfManufacture;
  bool? hasVariantsWithProp65Risk;
  List<WebCategoriesResponse>? webCategories;
  List<VariantsResponse>? variants;
  MediaResponse? media;
  //List<dynamic>? badges;
  InfoResponse? info;
  String? shippingRestriction;
  PriceResponse? price;
  bool? isDeadProduct;
  String? rating;
  ProductTypeResponse? productType;
  //List<dynamic>? plpIds;
  String? baseUrl;
  // toJson
  Map<String, dynamic> toJson() => _$ProductDetailsResponseToJson(this);

//fromJson
  factory ProductDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsResponseFromJson(json);
}

@JsonSerializable()
class ProductTypeResponse {
  ProductTypeResponse(
    this.id,
    this.name,
  );

  int? id;
  String? name;
  // toJson
  Map<String, dynamic> toJson() => _$ProductTypeResponseToJson(this);

//fromJson
  factory ProductTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeResponseFromJson(json);
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
class InfoResponse {
  InfoResponse(
    this.aboutMe,
    this.sizeAndFit,
    this.careInfo,
  );

  String? aboutMe;
  String? sizeAndFit;
  String? careInfo;
  // toJson
  Map<String, dynamic> toJson() => _$InfoResponseToJson(this);

//fromJson
  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);
}

@JsonSerializable()
class MediaResponse {
  MediaResponse(
    this.images,
    this.catwalk,
    //this.spinset,
    //this.swatchSprite,
  );

  List<ImagesResponse>? images;
  List<CatwalkResponse>? catwalk;
  //List<dynamic>? spinset;
  //List<dynamic>? swatchSprite;
  // toJson
  Map<String, dynamic> toJson() => _$MediaResponseToJson(this);

//fromJson
  factory MediaResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseFromJson(json);
}

@JsonSerializable()
class CatwalkResponse {
  CatwalkResponse(
    this.url,
    this.colourWayId,
    this.colourCode,
  );

  String? url;
  int? colourWayId;
  String? colourCode;
  // toJson
  Map<String, dynamic> toJson() => _$CatwalkResponseToJson(this);

//fromJson
  factory CatwalkResponse.fromJson(Map<String, dynamic> json) =>
      _$CatwalkResponseFromJson(json);
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
  dynamic ean;
  dynamic seller;
  // toJson
  Map<String, dynamic> toJson() => _$VariantsResponseToJson(this);

//fromJson
  factory VariantsResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantsResponseFromJson(json);
}

@JsonSerializable()
class WebCategoriesResponse {
  WebCategoriesResponse(
    this.id,
  );

  int? id;
  // toJson
  Map<String, dynamic> toJson() => _$WebCategoriesResponseToJson(this);

//fromJson
  factory WebCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$WebCategoriesResponseFromJson(json);
}

@JsonSerializable()
class BrandResponse {
  BrandResponse(
    this.brandId,
    this.name,
    this.description,
  );

  int? brandId;
  String? name;
  dynamic description;
  // toJson
  Map<String, dynamic> toJson() => _$BrandResponseToJson(this);

//fromJson
  factory BrandResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseFromJson(json);
}

@JsonSerializable()
class LocalisedDataResponse {
  LocalisedDataResponse(
    this.locale,
    this.title,
    this.pdpUrl,
  );

  String? locale;
  String? title;
  String? pdpUrl;
  // toJson
  Map<String, dynamic> toJson() => _$LocalisedDataResponseToJson(this);

//fromJson
  factory LocalisedDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LocalisedDataResponseFromJson(json);
}

@JsonSerializable()
class AlternateNamesResponse {
  AlternateNamesResponse(
    this.locale,
    this.title,
  );

  String? locale;
  String? title;
  // toJson
  Map<String, dynamic> toJson() => _$AlternateNamesResponseToJson(this);

//fromJson
  factory AlternateNamesResponse.fromJson(Map<String, dynamic> json) =>
      _$AlternateNamesResponseFromJson(json);
}
////////////////////////////////////////////////////////////////////////////////////
