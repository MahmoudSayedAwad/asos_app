import 'package:asos_app/data/data_source/remote_data_source.dart';
import 'package:asos_app/data/mappers/auto_complete_mapper.dart';
import 'package:asos_app/data/mappers/categories_mappers.dart';
import 'package:asos_app/data/mappers/countries_mapper.dart';
import 'package:asos_app/data/mappers/product_details_mappers.dart';
import 'package:asos_app/data/mappers/products_mappers.dart';
import 'package:asos_app/data/mappers/similarities_mapper.dart';
import 'package:asos_app/data/network/error_handler.dart';
import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/data/network/network_info.dart';
import 'package:asos_app/domain/models/auto_complete.dart';
import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/domain/models/product_details.dart';
import 'package:asos_app/domain/models/products.dart';
import 'package:asos_app/domain/models/similarities.dart';
import 'package:asos_app/domain/repositry/repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class RepositoryImpl implements Repository {
  final NetworkInfo _networkInfo;
  final RemoteDataSource _remoteDataSource;

  RepositoryImpl(this._networkInfo, this._remoteDataSource);

  @override
  Future<Either<Failure, AutoComplete>> getAutoComplete(
      Map<String, dynamic>? queries, String store, String name) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _remoteDataSource.getAutoComplete(queries, store, name);
        return Right(response.toDomain());
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, Categories>> getCategories(
      {String? country, String? language}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.getCategories(
            country: country, language: language);
        return Right(response.toDomain());
      } catch (error) {
        if (kDebugMode) {
          print(error.toString());
        }
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<Country>>> getCountries(
      {String? language}) async {
    if (await _networkInfo.isConnected) {
      try {
        final response =
            await _remoteDataSource.getCountries(language: language);
        return Right(response.map((country) => country.toDomain()).toList());
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, ProductDetails>> getProductDetails(
      String id, Map<String, dynamic>? queries) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.getProductDetails(id, queries);
        return Right(response.toDomain());
      } catch (error) {
        if (kDebugMode) {
          print(error.toString());
        }
        return Left(ErrorHandler.handle(error).failure);
      }
    }
    else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, Products>> getProducts(String store, String offset,
      String categoryId, String limit, Map<String, dynamic>? queries) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.getProducts(
            store, offset, categoryId, limit, queries);
        return Right(response.toDomain());
      } catch (error) {
        if (kDebugMode) {
          print(error.toString());
        }
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, Similarities>> getSimilarities(
      String id, Map<String, dynamic>? queries) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.getSimilarities(id, queries);
        return Right(response.toDomain());
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
