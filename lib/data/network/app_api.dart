import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/data/response/products_response.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../response/similarities_response.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @GET("categories/list")
  Future<CategoriesResponse> getCategories(
      {@Query('country') String? country, @Query('lang') String? language});
  @GET("v2/auto-complete")
  Future<AutoCompleteResponse> getAutoComplete(
      @Queries() Map<String, dynamic>? queries,
      @Query('store') String store,
      @Query('q') String name);
  @GET("countries/list")
  Future<List<CountryResponse>> getCountries({@Query('lang') String? language});
  @GET("products/v2/list")
  Future<ProductsResponse> getProducts(
    @Query('store') String store,
    @Query('offset') String offset,
    @Query('categoryId') String categoryId,
    @Query('limit') String limit,
    @Queries() Map<String, dynamic>? queries,
  );
  @GET("products/v3/detail")
  Future<ProductDetailsResponse> getProductDetails(
      @Query('id') String id, @Queries() Map<String, dynamic>? queries);
  @GET('products/v3/list-similarities')
  Future<SimilaritiesResponse> getSimilarities(
      @Query('id') String id, @Queries() Map<String, dynamic>? queries);
}
