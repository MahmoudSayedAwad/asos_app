import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/app/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  final AppPreferences _appPreferences;
  DioFactory(this._appPreferences);
  Future<Dio> getDio() async {
    Dio dio = Dio();
    String language =  _appPreferences.getAppLanguage().language;
    Map<String, String> headers = {
      'X-RapidAPI-Key': '055e54797amsh8007228cb762cbcp199966jsn992ae2ff64dc',
      'X-RapidAPI-Host': 'asos2.p.rapidapi.com'
    };

    dio.options = BaseOptions(
        baseUrl: Constants.baseUrl,
        headers: headers,
        receiveTimeout: Constants.apiTimeOut,
        sendTimeout: Constants.apiTimeOut);
    if (!kReleaseMode) {
      // its debug mode so print app logs
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
      ));
    }

    return dio;
  }
}
