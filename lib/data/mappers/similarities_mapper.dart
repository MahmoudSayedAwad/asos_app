import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/similarities_response.dart';
import 'package:asos_app/domain/models/similarities.dart';

extension ImagesResponseMapper on ImagesResponse? {
  Images toDomain() {
    return Images(
      this?.url?.orEmpty() ?? Constants.empty,
      this?.type?.orEmpty() ?? Constants.empty,
      this?.colourWayId?.orZero() ?? Constants.zero,
      this?.colourCode?.orEmpty() ?? Constants.empty,
      this?.colour?.orEmpty() ?? Constants.empty,
      this?.isPrimary ?? false,
    );
  }
}

extension CurrentResponseMapper on CurrentResponse? {
  Current toDomain() {
    return Current(
      this?.value.orZero() ?? Constants.zero.toDouble(),
      this?.text.orEmpty() ?? Constants.empty,
      this?.versionId.orEmpty() ?? Constants.empty,
      this?.conversionId.orEmpty() ?? Constants.empty,
    );
  }
}

extension PreviousResponseMapper on PreviousResponse? {
  Previous toDomain() {
    return Previous(
      this?.value.orZero() ?? Constants.zero.toDouble(),
      this?.text.orEmpty() ?? Constants.empty,
      this?.versionId.orEmpty() ?? Constants.empty,
      this?.conversionId.orEmpty() ?? Constants.empty,
    );
  }
}

extension RrpResponseMapper on RrpResponse? {
  Rrp toDomain() {
    return Rrp(
      this?.value.orZero() ?? Constants.zero.toDouble(),
      this?.text.orEmpty() ?? Constants.empty,
      this?.versionId.orEmpty() ?? Constants.empty,
      this?.conversionId.orEmpty() ?? Constants.empty,
    );
  }
}

extension XrpResponseMapper on XrpResponse? {
  Xrp toDomain() {
    return Xrp(
      this?.value.orZero() ?? Constants.zero.toDouble(),
      this?.text.orEmpty() ?? Constants.empty,
      this?.versionId.orEmpty() ?? Constants.empty,
      this?.conversionId.orEmpty() ?? Constants.empty,
    );
  }
}

extension PriceResponseMapper on PriceResponse? {
  Price toDomain() {
    return Price(
      this!.current!.toDomain(),
      this!.previous!.toDomain(),
      this!.rrp!.toDomain(),
      this!.xrp!.toDomain(),
      this?.currency.orEmpty() ?? Constants.empty,
      this?.isMarkedDown ?? false,
      this?.isOutletPrice ?? false,
      this?.startDateTime.orEmpty() ?? Constants.empty,
    );
  }
}

extension VariantsResponseMapper on VariantsResponse? {
  Variants toDomain() {
    return Variants(
      this?.id.orZero() ?? Constants.zero,
      this?.name.orEmpty() ?? Constants.empty,
      this?.sizeId.orZero() ?? Constants.zero,
      this?.brandSize.orEmpty() ?? Constants.empty,
      this?.sizeDescription.orEmpty() ?? Constants.empty,
      this?.displaySizeText.orEmpty() ?? Constants.empty,
      this?.sizeOrder.orZero() ?? Constants.zero,
      this?.sku.orEmpty() ?? Constants.empty,
      this?.isLowInStock ?? false,
      this?.isInStock ?? false,
      this?.isAvailable ?? false,
      this?.colourWayId.orZero() ?? Constants.zero,
      this?.colourCode.orEmpty() ?? Constants.empty,
      this?.colour.orEmpty() ?? Constants.empty,
      this!.price!.toDomain(),
      this?.isPrimary ?? false,
      this?.isProp65Risk ?? false,
      this?.ean,
      this?.seller,
    );
  }
}

extension ProductResponseMapper on ProductResponse? {
  Product toDomain() {
    return Product(
      this?.id?.orZero() ?? Constants.zero,
      this?.name?.orEmpty() ?? Constants.empty,
      this?.brandName?.orEmpty() ?? Constants.empty,
      this?.images?.map((image) => image.toDomain()).toList() ??
          const Iterable.empty().cast<Images>().toList(),
      this!.price!.toDomain(),
      this?.sizeGuide?.orEmpty() ?? Constants.empty,
      this?.isNoSize ?? false,
      this?.isOneSize ?? false,
      this?.isInStock ?? false,
      this?.hasMultipleColoursInStock ?? false,
      this?.hasMultiplePricesInStock ?? false,
      this?.isAvailable ?? false,
      this?.productCode?.orEmpty() ?? Constants.empty,
      this?.colour?.orEmpty() ?? Constants.empty,
      this?.variants?.map((variant) => variant.toDomain()).toList() ??
          const Iterable.empty().cast<Variants>().toList(),
      this?.shippingRestriction?.orEmpty() ?? Constants.empty,
      this?.navigateUrl?.orEmpty() ?? Constants.empty,
      this?.rating?.orEmpty() ?? Constants.empty,
      this?.localisedData?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ProductsResponseMapper on SimilarProductsResponse? {
  SimilarProducts toDomain() {
    return SimilarProducts(
        this?.order?.orZero() ?? Constants.zero, this!.product!.toDomain());
  }
}

extension SimilaritiesResponseMapper on SimilaritiesResponse? {
  Similarities toDomain() {
    return Similarities(
        this?.id?.orZero() ?? Constants.zero,
        this?.products?.map((product) => product.toDomain()).toList() ??
            const Iterable.empty().cast<SimilarProducts>().toList(),
        this?.navigateUrl?.orEmpty() ?? Constants.empty,
        this?.baseUrl?.orEmpty() ?? Constants.empty);
  }
}
