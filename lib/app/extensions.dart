import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:flutter/material.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.zero;
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return Constants.zero.toDouble();
    } else {
      return this!;
    }
  }
}

extension NonNullDynamic on dynamic {
  orEmpty() {
    if (runtimeType is String?) {
      if (this == null) {
        return Constants.empty;
      } else {
        return this!;
      }
    } else if (runtimeType is int) {
      if (this == null) {
        return Constants.zero;
      } else {
        return this!;
      }
    }
  }
}
extension ToColor on String {
 Color toColor() {
    if (toLowerCase().contains("black")) {
      return Colors.black;
    } else if (toLowerCase().contains("blue")) {
      return Colors.blue;
    } else if (toLowerCase().contains("red")) {
      return Colors.red;
    } else if(toLowerCase().contains("brown"))  {
      return Colors.brown;
    }else if(toLowerCase().contains("gold"))  {
      return Colors.amber;
    }else if(toLowerCase().contains("gray"))  {
      return Colors.grey;
    }else if(toLowerCase().contains("green"))  {
      return Colors.green;
    }else if(toLowerCase().contains("navy"))  {
      return Colors.indigo.shade900;
    }else if(toLowerCase().contains("neutral"))  {
      return Colors.brown.shade50;
    }else if(toLowerCase().contains("orange"))  {
      return Colors.orange;
    }else if(toLowerCase().contains("pink"))  {
      return Colors.pink;
    }else if(toLowerCase().contains("purple"))  {
      return Colors.purple;
    }else if(toLowerCase().contains("yellow"))  {
      return Colors.yellow;
    }else{
      return Colors.white;
    }
  }
}
extension CountryToJson on Country{
  Map<String, dynamic> countryToJson() =>
      <String, dynamic>{
        'country':country,
        'store': store,
        'name': name,
        'imageUrl': imageUrl,
        'siteUrl': siteUrl,
        'siteId': siteId,
        'majorCountry': majorCountry,
        'isDefaultCountry': isDefaultCountry,
        'region': region,
        'legalEntity': legalEntity,
        'languages': languages.map((language) => language.languagesToJson()).toList(),
        'currencies': currencies.map((currency) => currency.currenciesToJson()).toList(),
        'sizeSchemas': sizeSchemas.map((sizeSchema) => sizeSchema.sizeSchemaToJson()).toList(),
      };
}
extension SizeSchemasToJson on SizeSchemas{
  Map<String, dynamic> sizeSchemaToJson() =>
      <String, dynamic>{
        'sizeSchema': sizeSchema,
        'text': text,
        'isPrimary': isPrimary,
      };
}
extension LanguagesToJson on Languages{
  Map<String, dynamic> languagesToJson() =>
      <String, dynamic>{
        'language': language,
        'name': name,
        'text': text,
        'languageShort': languageShort,
        'isPrimary': isPrimary,
      };
}
extension CurrenciesToJson on Currencies{
  Map<String, dynamic> currenciesToJson() =>
      <String, dynamic>{
        'currency': currency,
        'symbol': symbol,
        'text': text,
        'isPrimary': isPrimary,
        'currencyId': currencyId,
      };
}
