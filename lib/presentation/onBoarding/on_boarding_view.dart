import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/app/di.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/presentation/resources/assets_manager.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/routes_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../countries_page/select_country.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final AppPreferences _appPreferences=instance<AppPreferences>();

  @override
  void initState() {
    // TODO: implement initState
    _appPreferences.setOnBoardingScreenViewed();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   Country country=  _appPreferences.getAppCountry();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
              height: AppSize.s160.h,
            ),
            SvgPicture.asset(ImageAssets.splashLogo),
             SizedBox(
              height: AppSize.s190.h,
            ),
            Center(
              child: Text(
                "DELIVER TO",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Container(
              width: double.infinity,
              padding:  EdgeInsets.symmetric(horizontal: AppSize.s12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   CircleAvatar(
                    backgroundImage: NetworkImage(
                        country.imageUrl),
                    radius: AppSize.s20.r,
                  ),
                   SizedBox(
                    width: AppSize.s8.w,
                  ),
                  Expanded(
                    flex: 5,
                    child: FittedBox(
                      child: Row(
                        children: [
                           Text(
                            country.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                           Text(",${country.currencies[0].text}"),
                           SizedBox(width: AppSize.s4.w,),
                          Text(
                            "|",
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: () {
                      //  Navigator.pushNamed(context, Routes.countries);
                        initMainModule();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CountryList()));
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: ColorManager.black, textStyle: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontSize: 24.sp, fontWeight: FontWeight.w600),

                          padding: EdgeInsets.zero),
                      child: const Text("CHANGE"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppSize.s40.w, vertical: AppSize.s16.h),
              child: ElevatedButton(
                onPressed: () {
                  _appPreferences.changeUserGender("men");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16.r),
                  ),
                ),
                child:  SizedBox(
                  width: double.infinity,
                  height: AppSize.s40.w,
                  child: const Center(child: Text("MEN")),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: AppSize.s40.w, vertical: AppSize.s16.w),
              child: ElevatedButton(
                onPressed: () {
                  _appPreferences.changeUserGender("Women");
                },
                style: ElevatedButton.styleFrom(
                  primary: ColorManager.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppSize.s16.r),
                  ),
                ),
                child:  SizedBox(
                  width: double.infinity,
                  height: AppSize.s40.w,
                  child: Center(child: Text("WOMEN")),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
