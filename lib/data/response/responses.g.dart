// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    CategoriesResponse(
      (json['navigation'] as List<dynamic>?)
          ?.map((e) => NavigationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['brands'] as List<dynamic>?)
          ?.map((e) => BrandsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['footer'] as List<dynamic>?)
          ?.map((e) => FooterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{
      'navigation': instance.navigation,
      'brands': instance.brands,
      'footer': instance.footer,
    };

NavigationResponse _$NavigationResponseFromJson(Map<String, dynamic> json) =>
    NavigationResponse(
      json['id'] as String?,
      json['alias'] as String?,
      json['type'] as String?,
      json['webLargePriority'] as int?,
      json['content'] == null
          ? null
          : ContentResponse.fromJson(json['content'] as Map<String, dynamic>),
      json['style'] == null
          ? null
          : StyleResponse.fromJson(json['style'] as Map<String, dynamic>),
      json['link'] == null
          ? null
          : LinkResponse.fromJson(json['link'] as Map<String, dynamic>),
      (json['children'] as List<dynamic>?)
          ?.map((e) => ChildrenResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NavigationResponseToJson(NavigationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'type': instance.type,
      'webLargePriority': instance.webLargePriority,
      'content': instance.content,
      'style': instance.style,
      'link': instance.link,
      'children': instance.children,
    };

BrandsResponse _$BrandsResponseFromJson(Map<String, dynamic> json) =>
    BrandsResponse(
      json['id'] as String?,
      json['alias'] as String?,
      json['type'] as String?,
      json['webLargePriority'] as int?,
      json['content'] == null
          ? null
          : ContentResponse.fromJson(json['content'] as Map<String, dynamic>),
      json['display'] == null
          ? null
          : DisplayResponse.fromJson(json['display'] as Map<String, dynamic>),
      json['style'] == null
          ? null
          : StyleResponse.fromJson(json['style'] as Map<String, dynamic>),
      json['link'] == null
          ? null
          : LinkResponse.fromJson(json['link'] as Map<String, dynamic>),
      (json['children'] as List<dynamic>?)
          ?.map((e) => ChildrenResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandsResponseToJson(BrandsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'type': instance.type,
      'webLargePriority': instance.webLargePriority,
      'content': instance.content,
      'display': instance.display,
      'style': instance.style,
      'link': instance.link,
      'children': instance.children,
    };

FooterResponse _$FooterResponseFromJson(Map<String, dynamic> json) =>
    FooterResponse(
      json['id'] as String?,
      json['alias'] as String?,
      json['type'] as String?,
      json['webLargePriority'] as int?,
      json['content'] == null
          ? null
          : ContentResponse.fromJson(json['content'] as Map<String, dynamic>),
      json['display'] == null
          ? null
          : DisplayResponse.fromJson(json['display'] as Map<String, dynamic>),
      json['style'] == null
          ? null
          : StyleResponse.fromJson(json['style'] as Map<String, dynamic>),
      json['link'] == null
          ? null
          : LinkResponse.fromJson(json['link'] as Map<String, dynamic>),
      (json['children'] as List<dynamic>?)
          ?.map((e) => ChildrenResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FooterResponseToJson(FooterResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'type': instance.type,
      'webLargePriority': instance.webLargePriority,
      'content': instance.content,
      'display': instance.display,
      'style': instance.style,
      'link': instance.link,
      'children': instance.children,
    };

ChildrenResponse _$ChildrenResponseFromJson(Map<String, dynamic> json) =>
    ChildrenResponse(
      json['id'] as String?,
      json['alias'] as String?,
      json['type'] as String?,
      (json['channelExclusions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['webLargePriority'] as int?,
      json['content'] == null
          ? null
          : ContentResponse.fromJson(json['content'] as Map<String, dynamic>),
      json['display'] == null
          ? null
          : DisplayResponse.fromJson(json['display'] as Map<String, dynamic>),
      json['style'] == null
          ? null
          : StyleResponse.fromJson(json['style'] as Map<String, dynamic>),
      json['link'] == null
          ? null
          : LinkResponse.fromJson(json['link'] as Map<String, dynamic>),
      (json['children'] as List<dynamic>?)
          ?.map((e) => ChildrenResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChildrenResponseToJson(ChildrenResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'type': instance.type,
      'channelExclusions': instance.channelExclusions,
      'webLargePriority': instance.webLargePriority,
      'content': instance.content,
      'display': instance.display,
      'style': instance.style,
      'link': instance.link,
      'children': instance.children,
    };

LinkResponse _$LinkResponseFromJson(Map<String, dynamic> json) => LinkResponse(
      json['linkType'] as String?,
      json['brandSectionAlias'] as String?,
      json['categoryId'] as int?,
      json['webUrl'] as String?,
      json['appUrl'] as String?,
    );

Map<String, dynamic> _$LinkResponseToJson(LinkResponse instance) =>
    <String, dynamic>{
      'linkType': instance.linkType,
      'brandSectionAlias': instance.brandSectionAlias,
      'categoryId': instance.categoryId,
      'webUrl': instance.webUrl,
      'appUrl': instance.appUrl,
    };

StyleResponse _$StyleResponseFromJson(Map<String, dynamic> json) =>
    StyleResponse(
      json['webLargeStyleType'] as String?,
      json['mobileStyleType'] as String?,
    );

Map<String, dynamic> _$StyleResponseToJson(StyleResponse instance) =>
    <String, dynamic>{
      'webLargeStyleType': instance.webLargeStyleType,
      'mobileStyleType': instance.mobileStyleType,
    };

ContentResponse _$ContentResponseFromJson(Map<String, dynamic> json) =>
    ContentResponse(
      json['title'] as String?,
      json['subTitle'] as String?,
      json['webLargeImageUrl'] as String?,
      json['mobileImageUrl'] as String?,
    );

Map<String, dynamic> _$ContentResponseToJson(ContentResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'webLargeImageUrl': instance.webLargeImageUrl,
      'mobileImageUrl': instance.mobileImageUrl,
    };

DisplayResponse _$DisplayResponseFromJson(Map<String, dynamic> json) =>
    DisplayResponse(
      json['webLargeTemplateId'] as int?,
      json['webLargeTemplateName'] as String?,
      json['webLargeColumnSpan'] as int?,
      json['mobileTemplateId'] as int?,
      json['mobileTemplateName'] as String?,
      json['mobileDisplayLayout'] as String?,
    );

Map<String, dynamic> _$DisplayResponseToJson(DisplayResponse instance) =>
    <String, dynamic>{
      'webLargeTemplateId': instance.webLargeTemplateId,
      'webLargeTemplateName': instance.webLargeTemplateName,
      'webLargeColumnSpan': instance.webLargeColumnSpan,
      'mobileTemplateId': instance.mobileTemplateId,
      'mobileTemplateName': instance.mobileTemplateName,
      'mobileDisplayLayout': instance.mobileDisplayLayout,
    };

AutoCompleteResponse _$AutoCompleteResponseFromJson(
        Map<String, dynamic> json) =>
    AutoCompleteResponse(
      (json['suggestionGroups'] as List<dynamic>?)
          ?.map((e) =>
              SuggestionGroupsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutoCompleteResponseToJson(
        AutoCompleteResponse instance) =>
    <String, dynamic>{
      'suggestionGroups': instance.suggestionGroups,
    };

SuggestionGroupsResponse _$SuggestionGroupsResponseFromJson(
        Map<String, dynamic> json) =>
    SuggestionGroupsResponse(
      json['indexName'] as String?,
      json['indexTitle'] as String?,
      (json['suggestions'] as List<dynamic>?)
          ?.map((e) => SuggestionsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SuggestionGroupsResponseToJson(
        SuggestionGroupsResponse instance) =>
    <String, dynamic>{
      'indexName': instance.indexName,
      'indexTitle': instance.indexTitle,
      'suggestions': instance.suggestions,
    };

SuggestionsResponse _$SuggestionsResponseFromJson(Map<String, dynamic> json) =>
    SuggestionsResponse(
      json['searchTerm'] as String?,
      json['numberOfResults'] as int?,
    );

Map<String, dynamic> _$SuggestionsResponseToJson(
        SuggestionsResponse instance) =>
    <String, dynamic>{
      'searchTerm': instance.searchTerm,
      'numberOfResults': instance.numberOfResults,
    };

CountryResponse _$CountryResponseFromJson(Map<String, dynamic> json) =>
    CountryResponse(
      json['country'] as String?,
      json['store'] as String?,
      json['name'] as String?,
      json['imageUrl'] as String?,
      json['siteUrl'] as String?,
      json['siteId'] as int?,
      json['majorCountry'] as String?,
      json['isDefaultCountry'] as bool?,
      json['region'] as String?,
      json['legalEntity'] as String?,
      (json['languages'] as List<dynamic>?)
          ?.map((e) => LanguagesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['currencies'] as List<dynamic>?)
          ?.map((e) => CurrenciesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['sizeSchemas'] as List<dynamic>?)
          ?.map((e) => SizeSchemasResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CountryResponseToJson(CountryResponse instance) =>
    <String, dynamic>{
      'country': instance.country,
      'store': instance.store,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'siteUrl': instance.siteUrl,
      'siteId': instance.siteId,
      'majorCountry': instance.majorCountry,
      'isDefaultCountry': instance.isDefaultCountry,
      'region': instance.region,
      'legalEntity': instance.legalEntity,
      'languages': instance.languages,
      'currencies': instance.currencies,
      'sizeSchemas': instance.sizeSchemas,
    };

SizeSchemasResponse _$SizeSchemasResponseFromJson(Map<String, dynamic> json) =>
    SizeSchemasResponse(
      json['sizeSchema'] as String?,
      json['text'] as String?,
      json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$SizeSchemasResponseToJson(
        SizeSchemasResponse instance) =>
    <String, dynamic>{
      'sizeSchema': instance.sizeSchema,
      'text': instance.text,
      'isPrimary': instance.isPrimary,
    };

CurrenciesResponse _$CurrenciesResponseFromJson(Map<String, dynamic> json) =>
    CurrenciesResponse(
      json['currency'] as String?,
      json['symbol'] as String?,
      json['text'] as String?,
      json['isPrimary'] as bool?,
      json['currencyId'] as int?,
    );

Map<String, dynamic> _$CurrenciesResponseToJson(CurrenciesResponse instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'symbol': instance.symbol,
      'text': instance.text,
      'isPrimary': instance.isPrimary,
      'currencyId': instance.currencyId,
    };

LanguagesResponse _$LanguagesResponseFromJson(Map<String, dynamic> json) =>
    LanguagesResponse(
      json['language'] as String?,
      json['name'] as String?,
      json['text'] as String?,
      json['languageShort'] as String?,
      json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$LanguagesResponseToJson(LanguagesResponse instance) =>
    <String, dynamic>{
      'language': instance.language,
      'name': instance.name,
      'text': instance.text,
      'languageShort': instance.languageShort,
      'isPrimary': instance.isPrimary,
    };

ProductDetailsResponse _$ProductDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    ProductDetailsResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      (json['alternateNames'] as List<dynamic>?)
          ?.map(
              (e) => AlternateNamesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['localisedData'] as List<dynamic>?)
          ?.map(
              (e) => LocalisedDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['gender'] as String?,
      json['productCode'] as String?,
      json['pdpLayout'] as String?,
      json['brand'] == null
          ? null
          : BrandResponse.fromJson(json['brand'] as Map<String, dynamic>),
      json['sizeGuide'] as String?,
      json['sizeGuideApiUrl'] as String?,
      json['isNoSize'] as bool?,
      json['isOneSize'] as bool?,
      json['isInStock'] as bool?,
      json['countryOfManufacture'] as String?,
      json['hasVariantsWithProp65Risk'] as bool?,
      (json['webCategories'] as List<dynamic>?)
          ?.map(
              (e) => WebCategoriesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['variants'] as List<dynamic>?)
          ?.map((e) => VariantsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['media'] == null
          ? null
          : MediaResponse.fromJson(json['media'] as Map<String, dynamic>),
      json['info'] == null
          ? null
          : InfoResponse.fromJson(json['info'] as Map<String, dynamic>),
      json['shippingRestriction'] as String?,
      json['price'] == null
          ? null
          : PriceResponse.fromJson(json['price'] as Map<String, dynamic>),
      json['isDeadProduct'] as bool?,
      json['rating'] as String?,
      json['productType'] == null
          ? null
          : ProductTypeResponse.fromJson(
              json['productType'] as Map<String, dynamic>),
      json['baseUrl'] as String?,
    );

Map<String, dynamic> _$ProductDetailsResponseToJson(
        ProductDetailsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'alternateNames': instance.alternateNames,
      'localisedData': instance.localisedData,
      'gender': instance.gender,
      'productCode': instance.productCode,
      'pdpLayout': instance.pdpLayout,
      'brand': instance.brand,
      'sizeGuide': instance.sizeGuide,
      'sizeGuideApiUrl': instance.sizeGuideApiUrl,
      'isNoSize': instance.isNoSize,
      'isOneSize': instance.isOneSize,
      'isInStock': instance.isInStock,
      'countryOfManufacture': instance.countryOfManufacture,
      'hasVariantsWithProp65Risk': instance.hasVariantsWithProp65Risk,
      'webCategories': instance.webCategories,
      'variants': instance.variants,
      'media': instance.media,
      'info': instance.info,
      'shippingRestriction': instance.shippingRestriction,
      'price': instance.price,
      'isDeadProduct': instance.isDeadProduct,
      'rating': instance.rating,
      'productType': instance.productType,
      'baseUrl': instance.baseUrl,
    };

ProductTypeResponse _$ProductTypeResponseFromJson(Map<String, dynamic> json) =>
    ProductTypeResponse(
      json['id'] as int?,
      json['name'] as String?,
    );

Map<String, dynamic> _$ProductTypeResponseToJson(
        ProductTypeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
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

InfoResponse _$InfoResponseFromJson(Map<String, dynamic> json) => InfoResponse(
      json['aboutMe'] as String?,
      json['sizeAndFit'] as String?,
      json['careInfo'] as String?,
    );

Map<String, dynamic> _$InfoResponseToJson(InfoResponse instance) =>
    <String, dynamic>{
      'aboutMe': instance.aboutMe,
      'sizeAndFit': instance.sizeAndFit,
      'careInfo': instance.careInfo,
    };

MediaResponse _$MediaResponseFromJson(Map<String, dynamic> json) =>
    MediaResponse(
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['catwalk'] as List<dynamic>?)
          ?.map((e) => CatwalkResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaResponseToJson(MediaResponse instance) =>
    <String, dynamic>{
      'images': instance.images,
      'catwalk': instance.catwalk,
    };

CatwalkResponse _$CatwalkResponseFromJson(Map<String, dynamic> json) =>
    CatwalkResponse(
      json['url'] as String?,
      json['colourWayId'] as int?,
      json['colourCode'] as String?,
    );

Map<String, dynamic> _$CatwalkResponseToJson(CatwalkResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'colourWayId': instance.colourWayId,
      'colourCode': instance.colourCode,
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
      json['ean'],
      json['seller'],
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

WebCategoriesResponse _$WebCategoriesResponseFromJson(
        Map<String, dynamic> json) =>
    WebCategoriesResponse(
      json['id'] as int?,
    );

Map<String, dynamic> _$WebCategoriesResponseToJson(
        WebCategoriesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) =>
    BrandResponse(
      json['brandId'] as int?,
      json['name'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$BrandResponseToJson(BrandResponse instance) =>
    <String, dynamic>{
      'brandId': instance.brandId,
      'name': instance.name,
      'description': instance.description,
    };

LocalisedDataResponse _$LocalisedDataResponseFromJson(
        Map<String, dynamic> json) =>
    LocalisedDataResponse(
      json['locale'] as String?,
      json['title'] as String?,
      json['pdpUrl'] as String?,
    );

Map<String, dynamic> _$LocalisedDataResponseToJson(
        LocalisedDataResponse instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'title': instance.title,
      'pdpUrl': instance.pdpUrl,
    };

AlternateNamesResponse _$AlternateNamesResponseFromJson(
        Map<String, dynamic> json) =>
    AlternateNamesResponse(
      json['locale'] as String?,
      json['title'] as String?,
    );

Map<String, dynamic> _$AlternateNamesResponseToJson(
        AlternateNamesResponse instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'title': instance.title,
    };
