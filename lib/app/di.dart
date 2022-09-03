import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/data/data_source/remote_data_source.dart';
import 'package:asos_app/data/network/app_api.dart';
import 'package:asos_app/data/network/dio_factory.dart';
import 'package:asos_app/data/network/network_info.dart';
import 'package:asos_app/data/repository/repositry_imp.dart';
import 'package:asos_app/domain/repositry/repository.dart';
import 'package:asos_app/domain/usecase/get_categories.dart';
import 'package:asos_app/domain/usecase/get_country_usecase.dart';
import 'package:asos_app/domain/usecase/get_products_usecase.dart';
import 'package:asos_app/presentation/countries_page/countries_bloc/countries_bloc.dart';
import 'package:asos_app/presentation/main/bloc/cubit.dart';
import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_bloc.dart';
import 'package:asos_app/presentation/zoom/ProductsCubit/products_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/usecase/filter_products_usecase.dart';
import '../domain/usecase/get_product_details_usecase.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()));
  instance.registerLazySingleton<DioFactory>(
      () => DioFactory(instance<AppPreferences>()));
  Dio dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(instance<AppServiceClient>()));
//  instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
  instance.registerLazySingleton<Repository>(
      () => RepositoryImpl(instance(), instance()));
}

initMainModule() {
  if (!GetIt.I.isRegistered<GetCategoryUseCase>() &&
      !GetIt.I.isRegistered<GetCountryUseCase>()) {
    instance.registerFactory<GetCategoryUseCase>(
        () => GetCategoryUseCase(instance()));
    instance.registerFactory<GetCountryUseCase>(
        () => GetCountryUseCase(instance()));
    instance.registerFactory<AsosAppCubit>(() => AsosAppCubit(instance()));
    instance.registerFactory<AsosCountriesCubit>(
        () => AsosCountriesCubit(instance()));
  }
}

initProductsModule() {
  if (!GetIt.I.isRegistered<GetProductsUseCase>()&&!GetIt.I.isRegistered<FilterProductsUseCase>()) {
    instance.registerFactory<GetProductsUseCase>(
        () => GetProductsUseCase(instance()));
    instance.registerFactory<FilterProductsUseCase>(
            () => FilterProductsUseCase(instance()));
    instance.registerFactory<ProductsCubit>(() => ProductsCubit(instance()));
  }
}
initProductDetailsModule() {
  if (!GetIt.I.isRegistered<GetProductDetailsUseCase>()) {
    instance.registerFactory<GetProductDetailsUseCase>(
            () => GetProductDetailsUseCase(instance()));

    instance.registerFactory<ProductDetailsCubit>(() => ProductDetailsCubit(instance()));
  }
}