import 'package:asos_app/presentation/resources/styles_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_manager.dart';
import 'fonts_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primarySwatch: MaterialColor(0xff000000, {
      50: Colors.black.withOpacity(0.05), //10%
      100: Colors.black.withOpacity(0.1), //20%
      200: Colors.black.withOpacity(0.2), //30%
      300: Colors.black.withOpacity(0.3), //40%
      400: Colors.black.withOpacity(0.4), //50%
      500: Colors.black.withOpacity(0.5), //60%
      600: Colors.black.withOpacity(0.6), //70%
      700: Colors.black.withOpacity(0.7), //80%
      800: Colors.black.withOpacity(0.8), //90%
      900: Colors.black.withOpacity(0.9),
    }),
    // primaryColor: ColorManager.black,

    //primaryColorLight: ColorManager.white,
    //primaryColorDark: ColorManager.grey,
    //disabledColor: ColorManager.grey1,
    //splashColor: ColorManager.white,

    //primarySwatch: ColorManager.green,

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
          getRegularStyle(fontSize: FontSize.s16.sp, color: ColorManager.white),
    ),
    tabBarTheme: TabBarTheme(
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: ColorManager.green,
        unselectedLabelColor: ColorManager.darkGrey,
        labelStyle:
            getRegularStyle(color: ColorManager.green, fontSize: AppSize.s18.sp),
        indicator:  ShapeDecoration(
            shape: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManager.green, width: AppSize.s6),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0.r),
                  topLeft: Radius.circular(30.0.r),
                  bottomRight: Radius.circular(30.0.r),
                  bottomLeft: Radius.circular(30.0.r),
                ),),),),

    // button theme
    buttonTheme: const ButtonThemeData(
      splashColor: ColorManager.white,
      shape: StadiumBorder(),
      buttonColor: ColorManager.green,
      disabledColor: ColorManager.grey1,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16), backgroundColor: ColorManager.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s18.sp),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16.sp),
      headlineMedium:
          getRegularStyle(color: ColorManager.darkGrey, fontSize: FontSize.s14.sp),
      /*titleMedium:
            getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16)*/
      titleSmall:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16.sp),
      bodyLarge:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s16.sp),
      bodySmall: getRegularStyle(color: ColorManager.grey),
      bodyMedium:
          getRegularStyle(color: ColorManager.black, fontSize: FontSize.s12.sp),
      /*labelSmall:
            getBoldStyle(color: ColorManager.primary, fontSize: FontSize.s12)*/
    ),
    iconTheme:
         IconThemeData(color: ColorManager.black, size: AppSize.s24.r),
    inputDecorationTheme: InputDecorationTheme(
        // content padding
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle:
            getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14.sp),
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
