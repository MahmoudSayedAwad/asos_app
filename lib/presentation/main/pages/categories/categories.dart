import 'package:asos_app/presentation/main/bloc/cubit.dart';
import 'package:asos_app/presentation/main/bloc/states.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:asos_app/presentation/widgets/category_item_builder.dart';
import 'package:asos_app/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../resources/color_manager.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AsosAppCubit, AsosAppStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          // AsosAppCubit asosAppCubit=AsosAppCubit.get(context);
          return DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
                  child: SearchBar(),
                ),
                const SizedBox(
                  height: AppSize.s24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
                  child: PreferredSize(
                    preferredSize: const Size.fromHeight(60),
                    child: Stack(
                        fit: StackFit.passthrough,
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            height: 3,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: ColorManager.lightGrey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                            ),
                          ),
                          TabBar(
                            tabs: myTabs,
                            indicatorPadding: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s24,
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      CategoryTabView(
                        tabindex: 0,
                      ),
                      CategoryTabView(tabindex: 1),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  final List<Widget> myTabs = const <Widget>[
    Tab(
      text: "Men",
    ),
    Tab(
      text: "Women",
    ),
  ];
}

class CategoryTabView extends StatelessWidget {
  const CategoryTabView({Key? key, required this.tabindex}) : super(key: key);
  final int tabindex;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AsosAppCubit, AsosAppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AsosSuccessCategoriesState) {
          AsosAppCubit asosAppCubit = AsosAppCubit.get(context);
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.separated(
              itemCount: asosAppCubit
                  .categories.navigation[tabindex].children[4].children.length,
              itemBuilder: (context, index) {
                return categoryItemBuilder(
                    context,
                    index,
                    asosAppCubit
                        .categories.navigation[tabindex].children[4].children,tabindex);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            ),
          );
        } else if (state is AsosLoadingCategoriesState) {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return Container(
            color: Colors.white,
            child: const Center(
              child: Text("Connection Error"),
            ),
          );
        }
      },
    );
  }
}

/* Padding getCategoryCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.s16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Card(
              elevation: AppSize.s4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s16),
                  side: const BorderSide(
                      color: ColorManager.white, width: AppSize.s1)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s16),
                child: Image.network(
                  "https://content.asos-media.com/-/media/homepages/mw/2022/jan/03/hero/mw_4505_activewear_desktophero_1258x600.jpg",
                  fit: BoxFit.cover,
                  height: AppSize.s160,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }*/
