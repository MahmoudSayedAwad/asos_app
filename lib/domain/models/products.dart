class Products {
  Products(
      this.searchTerm, 
      this.categoryName, 
      this.itemCount, 
      this.redirectUrl, 
      this.products, 
      this.facets, 
      this.diagnostics, 
      this.searchPassMeta, 
      this.queryId, 

  );


  String searchTerm;
  String categoryName;
  int itemCount;
  String redirectUrl;
  List<Product> products;
  List<Facets> facets;
  Diagnostics diagnostics;
  SearchPassMeta searchPassMeta;
  String queryId;
  //List<dynamic>? discoverSearchProductTypes;
 // Campaigns? campaigns;



}
/*class Campaigns {
  Campaigns({
      this.promoBanners,});

  Campaigns.fromJson(dynamic json) {
    if (json['promoBanners'] != null) {
      promoBanners = [];
      json['promoBanners'].forEach((v) {
        promoBanners?.add(dynamic.fromJson(v));
      });
    }
  }
  List<dynamic>? promoBanners;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (promoBanners != null) {
      map['promoBanners'] = promoBanners?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}*/

class SearchPassMeta {
  SearchPassMeta(
      this.isPartial, 
      this.isSpellcheck, 

  );


  bool isPartial;
  bool isSpellcheck;




}
class Diagnostics {
  Diagnostics(
      this.requestId, 
      this.processingTime, 
      this.queryTime, 
      this.recommendationsEnabled, 
      this.recommendationsAnalytics);


  String requestId;
  int processingTime;
  int queryTime;
  bool recommendationsEnabled;
  RecommendationsAnalytics recommendationsAnalytics;
}
class RecommendationsAnalytics {
  RecommendationsAnalytics(
      this.personalisationStatus, 
      this.numberOfItems, 
      this.numberOfRecs, 
      this.personalisationType, 
      //this.items,
  );

  int personalisationStatus;
  int numberOfItems;
  int numberOfRecs;
  String personalisationType;
  //List<dynamic>? items;

}
class Facets {
  Facets(
      this.id, 
      this.name, 
      this.facetValues, 
      this.displayStyle, 
      this.facetType, 
      this.hasSelectedValues);


  String id;
  String name;
  List<FacetValues> facetValues;
  String displayStyle;
  String facetType;
  bool hasSelectedValues;



}
class FacetValues {
  FacetValues(
      this.count, 
      this.id, 
      this.name, 
      this.isSelected);


  int count;
  String id;
  String name;
  bool isSelected;

}
class Product {
  Product(
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
      this.isSellingFast);

  int id;
  String name;
  Price price;
  String colour;
  int colourWayId;
  String brandName;
  bool hasVariantColours;
  bool hasMultiplePrices;
  dynamic groupId;
  int productCode;
  String productType;
  String url;
  String imageUrl;
  String videoUrl;
  bool isSellingFast;


}
class Price {
  Price(
      this.current, 
      this.previous, 
      this.rrp, 
      this.isMarkedDown, 
      this.isOutletPrice, 
      this.currency);

  Current current;
  Previous previous;
  Rrp rrp;
  bool isMarkedDown;
  bool isOutletPrice;
  String currency;



}
class Rrp {
  Rrp(
      this.value, 
      this.text,);
  double value;
  String text;

}
class Previous {
  Previous(
      this.value, 
      this.text);

  double value;
  String text;

}
class Current {
  Current(
      this.value, 
      this.text);

  double value;
  String text;

}