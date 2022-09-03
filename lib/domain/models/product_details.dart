class ProductDetails {
  ProductDetails(
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


  int id;
  String name;
  String description;
  List<AlternateNames> alternateNames;
  List<LocalisedData> localisedData;
  String gender;
  String productCode;
  String pdpLayout;
  Brand brand;
  String sizeGuide;
  String sizeGuideApiUrl;
  bool isNoSize;
  bool isOneSize;
  bool isInStock;
  String countryOfManufacture;
  bool hasVariantsWithProp65Risk;
  List<WebCategories> webCategories;
  List<Variants> variants;
  Media media;
  //List<dynamic>? badges;
  Info info;
  String shippingRestriction;
  Price price;
  bool isDeadProduct;
  String rating;
  ProductType productType;
  //List<dynamic>? plpIds;
  String baseUrl;

}
class ProductType {
  ProductType(
    this.id,
    this.name,
  );


  int id;
  String name;


}
class Price {
  Price(
    this.current,
    this.previous,
    this.rrp,
    this.xrp,
    this.currency,
    this.isMarkedDown,
    this.isOutletPrice,
    this.startDateTime,
  );


  Current current;
  Previous previous;
  Rrp rrp;
  Xrp xrp;
  String currency;
  bool isMarkedDown;
  bool isOutletPrice;
  String startDateTime;

}
class Xrp {
  Xrp(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );

  double value;
  String text;
  String versionId;
  String conversionId;


}
class Rrp {
  Rrp(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );


  double value;
  String text;
  String versionId;
  String conversionId;


}
class Previous {
  Previous(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );


  double value;
  String text;
  String versionId;
  String conversionId;

}
class Current {
  Current(
    this.value,
    this.text,
    this.versionId,
    this.conversionId,
  );


  double value;
  String text;
  String versionId;
  String conversionId;

}
class Info {
  Info(
    this.aboutMe,
    this.sizeAndFit,
    this.careInfo,
  );

  String aboutMe;
  String sizeAndFit;
  String careInfo;

}
class Media {
  Media(
    this.images,
    this.catwalk,
    //this.spinset,
    //this.swatchSprite,
  );

  List<Images> images;
  List<Catwalk> catwalk;
  //List<dynamic>? spinset;
  //List<dynamic>? swatchSprite;

}
class Catwalk {
  Catwalk(
    this.url,
    this.colourWayId,
    this.colourCode,
  );

  String url;
  int colourWayId;
  String colourCode;


}
class Images {
  Images(
    this.url,
    this.type,
    this.colourWayId,
    this.colourCode,
    this.colour,
    this.isPrimary,
  );
  String url;
  String type;
  int colourWayId;
  String colourCode;
  String colour;
  bool isPrimary;

}
class Variants {
  Variants(
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
  int id;
  String name;
  int sizeId;
  String brandSize;
  String sizeDescription;
  String displaySizeText;
  int sizeOrder;
  String sku;
  bool isLowInStock;
  bool isInStock;
  bool isAvailable;
  int colourWayId;
  String colourCode;
  String colour;
  Price price;
  bool isPrimary;
  bool isProp65Risk;
  dynamic ean;
  dynamic seller;


}
class WebCategories {
  WebCategories(
    this.id,
  );

  int id;


}
class Brand {
  Brand(
    this.brandId,
    this.name,
    this.description,
  );
  int brandId;
  String name;
  String description;

}
class LocalisedData {
  LocalisedData(
    this.locale,
    this.title,
    this.pdpUrl,
  );


  String locale;
  String title;
  String pdpUrl;

}
class AlternateNames {
  AlternateNames(
    this.locale,
    this.title,
  );


  String locale;
  String title;


}