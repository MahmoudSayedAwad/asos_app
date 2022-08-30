import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:asos_app/domain/models/countries.dart';

extension CountriesResponseMapper on CountryResponse? {
  Country toDomain() {
    return Country(
        this?.country.orEmpty() ?? Constants.empty,
        this?.store.orEmpty() ?? Constants.empty,
        this?.name.orEmpty() ?? Constants.empty,
        this?.imageUrl.orEmpty() ?? Constants.empty,
        this?.siteUrl.orEmpty() ?? Constants.empty,
        this?.siteId.orZero() ?? Constants.zero,
        this?.majorCountry.orEmpty() ?? Constants.empty,
        this?.isDefaultCountry ?? false,
        this?.region.orEmpty() ?? Constants.empty,
        this?.legalEntity.orEmpty() ?? Constants.empty,
        this?.languages?.map((language) => language.toDomain()).toList() ??
            const Iterable.empty().cast<Languages>().toList(),
        this?.currencies?.map((currency) => currency.toDomain()).toList() ??
            const Iterable.empty().cast<Currencies>().toList(),
        this
                ?.sizeSchemas
                ?.map((sizeSchema) => sizeSchema.toDomain())
                .toList() ??
            const Iterable.empty().cast<SizeSchemas>().toList());
  }
}

extension SizeSchemasResponseMapper on SizeSchemasResponse? {
  SizeSchemas toDomain() {
    return SizeSchemas(this?.sizeSchema.orEmpty() ?? Constants.empty,
        this?.text.orEmpty() ?? Constants.empty, this?.isPrimary ?? false);
  }
}

extension CurrenciesResponseMapper on CurrenciesResponse? {
  Currencies toDomain() {
    return Currencies(
        this?.currency.orEmpty() ?? Constants.empty,
        this?.symbol.orEmpty() ?? Constants.empty,
        this?.text.orEmpty() ?? Constants.empty,
        this?.isPrimary ?? false,
        this?.currencyId.orZero() ?? Constants.zero);
  }
}

extension LanguagesResponseMapper on LanguagesResponse? {
  Languages toDomain() {
    return Languages(
      this?.language.orEmpty() ?? Constants.empty,
      this?.name.orEmpty() ?? Constants.empty,
      this?.text.orEmpty() ?? Constants.empty,
      this?.languageShort.orEmpty() ?? Constants.empty,
      this?.isPrimary ?? false,
    );
  }
}
