class Similarities {
  Similarities(
      this.id, 
      this.products, 
      this.navigateUrl, 
      this.baseUrl);

  int id;
  List<SimilarProducts> products;
  String navigateUrl;
  String baseUrl;

}
class SimilarProducts {
  SimilarProducts(
      this.order, 
      this.product);


  int order;
  Product product;

}
class Product {
  Product(
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
      this.localisedData);

  int id;
  String name;
  String brandName;
  List<Images> images;
  Price price;
  String sizeGuide;
  bool isNoSize;
  bool isOneSize;
  bool isInStock;
  bool hasMultipleColoursInStock;
  bool hasMultiplePricesInStock;
  bool isAvailable;
  String productCode;
  String colour;
  List<Variants> variants;
  String shippingRestriction;
  String navigateUrl;
  String rating;
  String localisedData;

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
      this.seller);

  int id;
  String name;
  int sizeId;
  String brandSize;
  String? sizeDescription;
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
  String? ean;
  String? seller;

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
      this.startDateTime);


  Current current;
  Previous previous;
  Rrp rrp;
  Xrp xrp;
  String currency;
  bool isMarkedDown;
  bool isOutletPrice;
  String? startDateTime;



}
class Xrp {
  Xrp(
      this.value, 
      this.text, 
      this.versionId, 
      this.conversionId);

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
      this.conversionId);


  double? value;
  String? text;
  String versionId;
  String conversionId;

}
class Previous {
  Previous(
      this.value, 
      this.text, 
      this.versionId, 
      this.conversionId);


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
      this.conversionId);

  Current.fromJson(dynamic json) {
    value = json['value'];
    text = json['text'];
    versionId = json['versionId'];
    conversionId = json['conversionId'];
  }
  double? value;
  String? text;
  String? versionId;
  String? conversionId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['value'] = value;
    map['text'] = text;
    map['versionId'] = versionId;
    map['conversionId'] = conversionId;
    return map;
  }

}
class Images {
  Images(
      this.url, 
      this.type, 
      this.colourWayId, 
      this.colourCode, 
      this.colour, 
      this.isPrimary);

  Images.fromJson(dynamic json) {
    url = json['url'];
    type = json['type'];
    colourWayId = json['colourWayId'];
    colourCode = json['colourCode'];
    colour = json['colour'];
    isPrimary = json['isPrimary'];
  }
  String? url;
  String? type;
  int? colourWayId;
  String? colourCode;
  String? colour;
  bool? isPrimary;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['type'] = type;
    map['colourWayId'] = colourWayId;
    map['colourCode'] = colourCode;
    map['colour'] = colour;
    map['isPrimary'] = isPrimary;
    return map;
  }

}