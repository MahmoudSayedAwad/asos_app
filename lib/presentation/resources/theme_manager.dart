import 'package:asos_app/presentation/resources/styles_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.white,
    primaryColorDark: ColorManager.grey,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.white,

    // cardview theme
    cardTheme: const CardTheme(
      color: ColorManager.white,
      elevation: AppSize.s4,
      shadowColor: ColorManager.grey,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.white,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),
    tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: ColorManager.green,
        unselectedLabelColor: ColorManager.darkGrey,
        labelStyle:
            getRegularStyle(color: ColorManager.green, fontSize: AppSize.s18),
        indicator: const ShapeDecoration(
            shape: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManager.green, width: AppSize.s6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                )))),

    // button theme
    buttonTheme: const ButtonThemeData(
      splashColor: ColorManager.white,
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.grey1,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s18),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headlineMedium:
          getRegularStyle(color: ColorManager.darkGrey, fontSize: FontSize.s14),
      /*titleMedium:
            getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16)*/
      titleSmall:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
      bodyLarge:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16),
      bodySmall: getRegularStyle(color: ColorManager.grey),
      bodyMedium:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s12),
      /*labelSmall:
            getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s12)*/
    ),
    iconTheme:
        const IconThemeData(color: ColorManager.black, size: AppSize.s24),
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
        /* labelStyle:
            getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14)*/
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border style
        enabledBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border style
        focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border style
        errorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused border style
        focusedErrorBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: ColorManager.darkGrey,
      selectedIconTheme: const IconThemeData(color: ColorManager.green),
      selectedItemColor: ColorManager.green,
      selectedLabelStyle: getRegularStyle(color: ColorManager.green),
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),

    // input decoration theme (text form field)
  );
}
