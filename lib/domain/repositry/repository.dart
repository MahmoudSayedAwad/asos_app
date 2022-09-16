

import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/domain/models/auto_complete.dart';
import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/domain/models/product_details.dart';
import 'package:asos_app/domain/models/products.dart';
import 'package:asos_app/domain/models/similarities.dart';
import 'package:dartz/dartz.dart';



abstract class Repository {

  Future<Either<Failure, Categories>> getCategories({String? country, String? language});
  Future<Either<Failure, AutoComplete>> getAutoComplete(
      Map<String, dynamic>? queries, String store, String name);
  Future<Either<Failure,List< Country>>> getCountries({String? language});
  Future<Either<Failure,Products>> getProducts(String store, String offset, String categoryId,
      String limit, String? country,
      String? currency,
      String? sizeSchema,
      String? lang, Map<String, dynamic>? queries);
  Future<Either<Failure, ProductDetails>> getProductDetails(
      String id, Map<String, dynamic>? queries);
  Future<Either<Failure, Similarities>> getSimilarities(
      String id, Map<String, dynamic>? queries);
}
