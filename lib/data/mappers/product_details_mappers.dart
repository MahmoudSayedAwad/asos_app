import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:asos_app/domain/models/product_details.dart';

extension ProductDetailsResponseMapper on ProductDetailsResponse? {
  ProductDetails toDomain() {
    return ProductDetails(
      this?.id.orZero() ?? Constants.zero,
      this?.name?.orEmpty() ?? Constants.empty,
      this?.description.orEmpty() ?? Constants.empty,
      this
              ?.alternateNames
              ?.map((alternateName) => alternateName.toDomain())
              .toList() ??
          const Iterable.empty().cast<AlternateNames>().toList(),
      this?.localisedData?.map((localised) => localised.toDomain()).toList() ??
          const Iterable.empty().cast<LocalisedData>().toList(),
      this?.gender.orEmpty() ?? Constants.empty,
      this?.productCode.orEmpty() ?? Constants.empty,
      this?.pdpLayout.orEmpty() ?? Constants.empty,
      this!.brand!.toDomain(),
      this?.sizeGuide.orEmpty() ?? Constants.empty,
      this?.sizeGuideApiUrl.orEmpty() ?? Constants.empty,
      this?.isNoSize ?? false,
      this?.isOneSize ?? false,
      this?.isInStock ?? false,
      this?.countryOfManufacture.orEmpty() ?? Constants.empty,
      this?.hasVariantsWithProp65Risk ?? false,
      this
              ?.webCategories
              ?.map((webCategory) => webCategory.toDomain())
              .toList() ??
          const Iterable.empty().cast<WebCategories>().toList(),
      this?.variants?.map((variant) => variant.toDomain()).toList() ??
          const Iterable.empty().cast<Variants>().toList(),
      this!.media!.toDomain(),
      this!.info!.toDomain(),
      this?.shippingRestriction.orEmpty() ?? Constants.empty,
      this!.price!.toDomain(),
      this?.isDeadProduct ?? false,
      this?.rating.orEmpty() ?? Constants.empty,
      this!.productType!.toDomain(),
      this?.baseUrl.orEmpty() ?? Constants.empty,
    );
  }
}

extension ProductTypeResponseMapper on ProductTypeResponse? {
  ProductType toDomain() {
    return ProductType(
      this?.id.orZero() ?? Constants.zero,
      this?.name?.orEmpty() ?? Constants.empty,
    );
  }
}

extension AlternateNamesResponseMapper on AlternateNamesResponse? {
  AlternateNames toDomain() {
    return AlternateNames(
      this?.locale.orEmpty() ?? Constants.empty,
      this?.title?.orEmpty() ?? Constants.empty,
    );
  }
}

extension LocalisedDataResponseMapper on LocalisedDataResponse? {
  LocalisedData toDomain() {
    return LocalisedData(
      this?.locale.orEmpty() ?? Constants.empty,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.pdpUrl?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BrandResponseMapper on BrandResponse? {
  Brand toDomain() {
    return Brand(
      this?.brandId.orZero() ?? Constants.zero,
      this?.name?.orEmpty() ?? Constants.empty,
      this?.description?.orEmpty() ?? Constants.empty,
    );
  }
}

extension WebCategoriesResponseMapper on WebCategoriesResponse? {
  WebCategories toDomain() {
    return WebCategories(
      this?.id.orZero() ?? Constants.zero,
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

extension ImagesResponseMapper on ImagesResponse? {
  Images toDomain() {
    return Images(
      this?.url.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.colourWayId.orZero() ?? Constants.zero,
      this?.colourCode.orEmpty() ?? Constants.empty,
      this?.colour.orEmpty() ?? Constants.empty,
      this?.isPrimary ?? false,
    );
  }
}

extension CatwalkResponseMapper on CatwalkResponse? {
  Catwalk toDomain() {
    return Catwalk(
      this?.url.orEmpty() ?? Constants.empty,
      this?.colourWayId.orZero() ?? Constants.zero,
      this?.colourCode.orEmpty() ?? Constants.empty,
    );
  }
}

extension MediaResponseMapper on MediaResponse? {
  Media toDomain() {
    return Media(
      this?.images?.map((image) => image.toDomain()).toList() ??
          const Iterable.empty().cast<Images>().toList(),
      this?.catwalk?.map((catwalk) => catwalk.toDomain()).toList() ??
          const Iterable.empty().cast<Catwalk>().toList(),
    );
  }
}

extension InfoResponseMapper on InfoResponse? {
  Info toDomain() {
    return Info(
      this?.aboutMe.orEmpty() ?? Constants.empty,
      this?.sizeAndFit.orEmpty() ?? Constants.empty,
      this?.careInfo.orEmpty() ?? Constants.empty,
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
