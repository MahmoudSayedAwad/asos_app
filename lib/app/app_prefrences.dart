import 'dart:convert';

import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/presentation/resources/gender_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/resources/language_manager.dart';

const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_KEY_GENDER = "PREFS_KEY_GENDER";
const String PREFS_KEY_COUNTRY = "PREFS_KEY_COUNTRY";

const String PREFS_KEY_ONBOARDING_SCREEN_VIEWED =
    "PREFS_KEY_ONBOARDING_SCREEN_VIEWED";
const String PREFS_KEY_IS_USER_LOGGED_IN = "PREFS_KEY_IS_USER_LOGGED_IN";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // return default lang
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<String> getUserGender() async {
    String? gender = _sharedPreferences.getString(PREFS_KEY_GENDER);
    if (gender != null && gender.isNotEmpty) {
      return gender;
    } else {
      // return default lang
      return GenderType.MEN.getValue();
    }
  }

  // on boarding

  Future<void> setOnBoardingScreenViewed() async {
    _sharedPreferences.setBool(PREFS_KEY_ONBOARDING_SCREEN_VIEWED, true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return _sharedPreferences.getBool(PREFS_KEY_ONBOARDING_SCREEN_VIEWED) ??
        false;
  }

  //login

  Future<void> setUserLoggedIn() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> logout() async {
    _sharedPreferences.remove(PREFS_KEY_IS_USER_LOGGED_IN);
  }

  Future<void> changeAppLanguage() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      // set english
      _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
    } else {
      // set arabic
      _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
    }
  }

  Future<void> changeUserGender(String gender) async {
    if (gender == GenderType.MEN.getValue()) {
      // set english
      _sharedPreferences.setString(PREFS_KEY_GENDER, GenderType.MEN.getValue());
    } else {
      // set arabic
      _sharedPreferences.setString(
          PREFS_KEY_GENDER, GenderType.WOMEN.getValue());
    }
  }

  Future<Locale> getLocal() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Country getAppCountry()  {
    String? country = _sharedPreferences.getString(PREFS_KEY_COUNTRY);

    if (country != null && country.isNotEmpty) {
      Map json = jsonDecode(country);
      return Country(
        json['country'] as String,
        json['store'] as String,
        json['name'] as String,
        json['imageUrl'] as String,
        json['siteUrl'] as String,
        json['siteId'] as int,
        json['majorCountry'] as String,
        json['isDefaultCountry'] as bool,
        json['region'] as String,
        json['legalEntity'] as String,
        (json['languages'] as List<dynamic>)
            .map((e) => Languages(e['language'], e['name'], e['text'],
                e['languageShort'], e['isPrimary']))
            .toList(),
        (json['currencies'] as List<dynamic>)
            .map((e) => Currencies(e['currency'], e['symbol'], e['text'],
                e['isPrimary'], e['currencyId']))
            .toList(),
        (json['sizeSchemas'] as List<dynamic>)
            .map((e) => SizeSchemas(e['sizeSchema'], e['text'], e['isPrimary']))
            .toList(),
      );
    } else {
      // return default lang
      return Country(
          "US",
          "US",
          "United States",
          "https://assets.asosservices.com/storesa/images/flags/us.png",
          "www.asos.com/us",
          2,
          " ",
          false,
          " ",
          " ", [
        Languages("en-US", "American English", "American English", "en", true)
      ], [
        Currencies("USD", "\$", "\$ USD", true, 2)
      ], [
        SizeSchemas("EU", "EU", false),
        SizeSchemas("US", "US", true)
      ]);
    }
  }

  Future<void> changeCountry(Country country) async {
    Map<String, dynamic> json = country.countryToJson();
    String jsonstring = jsonEncode(json);
    _sharedPreferences.setString(PREFS_KEY_COUNTRY, jsonstring);
  }
}
