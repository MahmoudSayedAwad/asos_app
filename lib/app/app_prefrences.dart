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

  Future<String> getAppCountry() async {
    String? country = _sharedPreferences.getString(PREFS_KEY_COUNTRY);
    if (country != null && country.isNotEmpty) {
      return country;
    } else {
      // return default lang
      return "USA";
    }
  }

  Future<void> changeCountry(Country country) async {
    _sharedPreferences.setString("country", country.country);
    _sharedPreferences.setString("name", country.name);
    _sharedPreferences.setString("imageUrl", country.imageUrl);
    _sharedPreferences.setStringList(
        "currencies",
        country.currencies.map((c) {
          return c.text;
        }).toList());
    _sharedPreferences.setStringList(
        "sizeSchemas", country.sizeSchemas.map((s) => s.text).toList());
  }
}
