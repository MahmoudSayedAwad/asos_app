import 'package:asos_app/data/network/app_api.dart';
import 'package:asos_app/data/response/products_response.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:asos_app/data/response/similarities_response.dart';

abstract class RemoteDataSource {
  Future<CategoriesResponse> getCategories({String? country, String? language});
  Future<AutoCompleteResponse> getAutoComplete(
      Map<String, dynamic>? queries, String store, String name);
  Future<List<CountryResponse>> getCountries({String? language});
  Future<ProductsResponse> getProducts(
      String store,
      String offset,
      String categoryId,
      String limit,
      String? country,
      String? currency,
      String? sizeSchema,
      String? lang,
      Map<String, dynamic>? queries);
  Future<ProductDetailsResponse> getProductDetails(
      String id, Map<String, dynamic>? queries);
  Future<SimilaritiesResponse> getSimilarities(
      String id, Map<String, dynamic>? queries);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<AutoCompleteResponse> getAutoComplete(
      Map<String, dynamic>? queries, String store, String name) async {
    return await _appServiceClient.getAutoComplete(queries, store, name);
  }

  @override
  Future<CategoriesResponse> getCategories(
      {String? country, String? language}) async {
    return await _appServiceClient.getCategories(
        country: country, language: language);
  }

  @override
  Future<List<CountryResponse>> getCountries({String? language}) async {
    return await _appServiceClient.getCountries(language: language);
  }

  @override
  Future<ProductDetailsResponse> getProductDetails(
      String id, Map<String, dynamic>? queries) async {
    return await _appServiceClient.getProductDetails(id, queries);
  }

  @override
  Future<ProductsResponse> getProducts(String store, String offset,
      String categoryId, String limit, String? country,
      String? currency,
      String? sizeSchema,
      String? lang, Map<String, dynamic>? queries) async {
    return await _appServiceClient.getProducts(
        store, offset, categoryId, limit,  country,
         currency,
         sizeSchema,
         lang, queries);
  }

  @override
  Future<SimilaritiesResponse> getSimilarities(
      String id, Map<String, dynamic>? queries) async {
    return await _appServiceClient.getSimilarities(id, queries);
  }
}
