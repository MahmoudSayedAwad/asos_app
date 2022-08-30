import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/products_response.dart';
import 'package:asos_app/domain/models/products.dart';

extension ProductsResponseMapper on ProductsResponse? {
  Products toDomain() {
    return Products(
      this?.searchTerm?.orEmpty() ?? Constants.empty,
      this?.categoryName?.orEmpty() ?? Constants.empty,
      this?.itemCount?.orZero() ?? Constants.zero,
      this?.redirectUrl?.orEmpty() ?? Constants.empty,
      this?.products?.map((product) => product.toDomain()).toList() ??
          const Iterable.empty().cast<Product>().toList(),
      this?.facets?.map((facet) => facet.toDomain()).toList() ??
          const Iterable.empty().cast<Facets>().toList(),
      this!.diagnostics!.toDomain(),
      this!.searchPassMeta!.toDomain(),
      this?.queryId?.orEmpty() ?? Constants.empty,
    );
  }
}

extension CurrentResponseMapper on CurrentResponse? {
  Current toDomain() {
    return Current(this?.value.orZero() ?? Constants.zero.toDouble(),
        this?.text?.orEmpty() ?? Constants.empty);
  }
}

extension PreviousResponseMapper on PreviousResponse? {
  Previous toDomain() {
    return Previous(this?.value?.orZero() ?? Constants.zero.toDouble(),
        this?.text?.orEmpty() ?? Constants.empty);
  }
}

extension RrpResponseMapper on RrpResponse? {
  Rrp toDomain() {
    return Rrp(this?.value.orZero() ?? Constants.zero.toDouble(),
        this?.text?.orEmpty() ?? Constants.empty);
  }
}

extension PriceResponseMapper on PriceResponse? {
  Price toDomain() {
    return Price(
        this!.current!.toDomain(),
        this!.previous!.toDomain(),
        this!.rrp!.toDomain(),
        this?.isMarkedDown ?? false,
        this?.isOutletPrice ?? false,
        this?.currency?.orEmpty() ?? Constants.empty);
  }
}

extension ProductResponseMapper on ProductResponse? {
  Product toDomain() {
    return Product(
        this?.id?.orZero() ?? Constants.zero,
        this?.name?.orEmpty() ?? Constants.empty,
        this!.price!.toDomain(),
        this?.colour?.orEmpty() ?? Constants.empty,
        this?.colourWayId?.orZero() ?? Constants.zero,
        this?.brandName?.orEmpty() ?? Constants.empty,
        this?.hasVariantColours ?? false,
        this?.hasMultiplePrices ?? false,
        this?.groupId ?? Constants.empty,
        this?.productCode?.orZero() ?? Constants.zero,
        this?.productType?.orEmpty() ?? Constants.empty,
        this?.url?.orEmpty() ?? Constants.empty,
        this?.imageUrl?.orEmpty() ?? Constants.empty,
        this?.videoUrl?.orEmpty() ?? Constants.empty,
        this?.isSellingFast ?? false);
  }
}

extension FacetValuesResponseMapper on FacetValuesResponse? {
  FacetValues toDomain() {
    return FacetValues(
        this?.count?.orZero() ?? Constants.zero,
        this?.id?.orEmpty() ?? Constants.empty,
        this?.name?.orEmpty() ?? Constants.empty,
        this?.isSelected ?? false);
  }
}

extension FacetsResponseMapper on FacetsResponse? {
  Facets toDomain() {
    return Facets(
        this?.id?.orEmpty() ?? Constants.empty,
        this?.name?.orEmpty() ?? Constants.empty,
        this
                ?.facetValues
                ?.map((facetValue) => facetValue.toDomain())
                .toList() ??
            const Iterable.empty().cast<FacetValues>().toList(),
        this?.displayStyle?.orEmpty() ?? Constants.empty,
        this?.facetType?.orEmpty() ?? Constants.empty,
        this?.hasSelectedValues ?? false);
  }
}

extension RecommendationsAnalyticsResponseMapper
    on RecommendationsAnalyticsResponse? {
  RecommendationsAnalytics toDomain() {
    return RecommendationsAnalytics(
      this?.personalisationStatus?.orZero() ?? Constants.zero,
      this?.numberOfItems?.orZero() ?? Constants.zero,
      this?.numberOfRecs?.orZero() ?? Constants.zero,
      this?.personalisationType?.orEmpty() ?? Constants.empty,
    );
  }
}

extension DiagnosticsResponseMapper on DiagnosticsResponse? {
  Diagnostics toDomain() {
    return Diagnostics(
        this?.requestId?.orEmpty() ?? Constants.empty,
        this?.processingTime?.orZero() ?? Constants.zero,
        this?.queryTime?.orZero() ?? Constants.zero,
        this?.recommendationsEnabled ?? false,
        this!.recommendationsAnalytics!.toDomain());
  }
}

extension SearchPassMetaResponseMapper on SearchPassMetaResponse? {
  SearchPassMeta toDomain() {
    return SearchPassMeta(
      this?.isPartial ?? false,
      this?.isSpellcheck ?? false,
    );
  }
}
