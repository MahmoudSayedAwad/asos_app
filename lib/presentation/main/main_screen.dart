import 'package:asos_app/app/di.dart';
import 'package:asos_app/presentation/main/bloc/cubit.dart';
import 'package:asos_app/presentation/main/pages/cart/cart.dart';
import 'package:asos_app/presentation/main/pages/categories/categories.dart';
import 'package:asos_app/presentation/main/pages/favourites/favourites.dart';
import 'package:asos_app/presentation/main/pages/home/home.dart';
import 'package:asos_app/presentation/main/pages/profile/profile.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  var _title = AppStrings.home;
  var _currentIndex = 0;
  List<String> titles = [
    AppStrings.home,
    AppStrings.search,
    AppStrings.cart,
    AppStrings.favourite,
    AppStrings.settings,
  ];
  List<Widget> pages = [
    const HomeView(),
    const CategoriesView(),
    const CartView(),
    const FavouritesView(),
    const ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => instance<AsosAppCubit>()..getCategories(),
        child: Scaffold(
          appBar: AppBar(
            elevation: AppSize.s0,
            backgroundColor: ColorManager.white,
            title: Text(
              _title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: ColorManager.black,
                size: AppSize.s24,
              ),
            ),
          ),
          body: pages[_currentIndex],
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(color: ColorManager.lightGrey, spreadRadius: AppSize.s1)
            ]),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: onTap,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: AppStrings.home),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: AppStrings.search),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: AppStrings.cart),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_sharp),
                    label: AppStrings.favourite),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: AppStrings.settings),
              ],
            ),
          ),
        ));
  }

  onTap(int index) {
    setState(() {
      _currentIndex = index;
      _title = titles[index];
    });
  }
}
