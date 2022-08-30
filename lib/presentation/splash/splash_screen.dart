
import 'dart:async';

import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/app/di.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resources/app_constants.dart';
import '../resources/assets_manager.dart';
import '../resources/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  final AppPreferences _appPreferences = instance<AppPreferences>();


  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }
  _goNext(){
    _appPreferences.isOnBoardingScreenViewed().then((isOnBoardingScreenViewed) => {
      if (isOnBoardingScreenViewed)
        {Navigator.pushReplacementNamed(context, Routes.mainRoute)}
      else
        {Navigator.pushReplacementNamed(context, Routes.onBoardingRoute)}
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child:  SvgPicture.asset(ImageAssets.splashLogo),
      ),
    );
  }
}
