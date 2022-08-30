
class Country {
  Country(
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

  String country;
  String store;
  String name;
  String imageUrl;
  String siteUrl;
  int siteId;
  String majorCountry;
  bool isDefaultCountry;
  String region;
  String legalEntity;
  List<Languages> languages;
  List<Currencies> currencies;
  List<SizeSchemas> sizeSchemas;
}

class SizeSchemas {
  SizeSchemas(this.sizeSchema, this.text, this.isPrimary);

  String sizeSchema;
  String text;
  bool isPrimary;
}

class Currencies {
  Currencies(
      this.currency, this.symbol, this.text, this.isPrimary, this.currencyId);

  String currency;
  String symbol;
  String text;
  bool isPrimary;
  int currencyId;
}

class Languages {
  Languages(
      this.language, this.name, this.text, this.languageShort, this.isPrimary);

  String language;
  String name;
  String text;
  String languageShort;
  bool isPrimary;
}
