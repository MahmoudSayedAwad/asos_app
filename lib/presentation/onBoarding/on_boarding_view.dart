import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/app/di.dart';
import 'package:asos_app/presentation/countries_page/select_country.dart';
import 'package:asos_app/presentation/resources/assets_manager.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/routes_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: AppSize.s160,
          ),
          SvgPicture.asset(ImageAssets.splashLogo),
          const SizedBox(
            height: AppSize.s190,
          ),
          Center(
            child: Text(
              "DELIVER TO",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s12),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://assets.asosservices.com/storesa/images/flags/us.png"),
                  radius: AppSize.s20,
                ),
                const SizedBox(
                  width: AppSize.s8,
                ),
                Expanded(
                  flex: 5,
                  child: FittedBox(
                    child: Row(
                      children: [
                        const Text(
                          "United States ",
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Text(",\$ USD"),
                        const SizedBox(width: AppSize.s4,),
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
                  child: FittedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.countries);
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>CountryList()));
                      },
                      style: TextButton.styleFrom(
                          primary: ColorManager.black,
                          textStyle: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w800),
                          /*minimumSize: Size(40, 20),
                        fixedSize: Size(40, 20),
                        maximumSize: Size(50, 50),*/
                          padding: EdgeInsets.zero),
                      child: const Text("CHANGE"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                _appPreferences.changeUserGender("Women");
              },
              style: ElevatedButton.styleFrom(
                primary: ColorManager.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                ),
              ),
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(child: Text("MEN")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                _appPreferences.changeUserGender("Women");
              },
              style: ElevatedButton.styleFrom(
                primary: ColorManager.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                ),
              ),
              child: const SizedBox(
                width: double.infinity,
                height: 40,
                child: Center(child: Text("WOMEN")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
