import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/widgets/product_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'ProductsCubit/products_cubit.dart';
import 'ProductsCubit/products_states.dart';

class ShowProducts extends StatelessWidget {
  ShowProducts({Key? key, required this.id}) : super(key: key);

  final ScrollController scrollController = ScrollController();
  final String id;
  ZoomDrawerController z = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<ProductsCubit, ProductsStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          ProductsCubit cubit = ProductsCubit.get(context);
          if (state is ProductsInitialState ||
              state is LoadingProductsState && cubit.products.isEmpty) {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          } else if (state is SuccessProductsState) {
            cubit.isFetching = false;
          } else if (state is ErrorProductsState && cubit.products.isEmpty) {
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      cubit
                        ..isFetching = true
                        ..getProducts(id: id);
                    },
                    icon: const Icon(Icons.refresh),
                  ),
                  const SizedBox(height: 15),
                  Text(state.error, textAlign: TextAlign.center),
                ],
              ),
            );
          }

          return Scaffold(
            body: SafeArea(
              child: CustomScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: scrollController
                  ..addListener(() {
                    //  print(scrollController.offset.toString());
                    if (scrollController.position.pixels >
                            scrollController.position.maxScrollExtent - 250 &&
                        !cubit.isFetching &&
                        cubit.maxCount >= cubit.offset) {
                      if (kDebugMode) {
                        print("Max${cubit.maxCount}${cubit.offset}");
                      }
                      cubit
                        ..isFetching = true
                        ..getProducts(id: id);
                    }
                  }),
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    snap: true,
                    forceElevated: true,
                    floating: true,
                    pinned: true,
                    title: Text(
                      cubit.productsModel.categoryName,
                      style: const TextStyle(color: Colors.black),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                    expandedHeight: 2 * kToolbarHeight,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.only(top: kToolbarHeight),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 8),
                              child: TextButton(
                                onPressed: () {
                                  ZoomDrawer.of(context)?.toggle();
                                  //z.toggle!();
                                },
                                child: const Text(
                                  'Filter',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 16),
                              child: SortProducts(
                                sort: (val){
                                  cubit.query.update(
                                      "sort", (value) => val ?? " ",
                                      ifAbsent: () => val!);
                                  cubit.products = [];
                                  cubit.offset = 0;

                                  cubit.getProducts(id: id);
                                },
                                selected:cubit.query["sort"],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Center(
                          child: Text(
                              '${cubit.productsModel.itemCount} Items found')),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.5739,
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 10,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return buildGridProduct(
                              cubit.products[index], context);
                        },
                        childCount: cubit.products.length,
                      ),
                    ),
                  ),
                  if (state is LoadingProductsState)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 40),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.green,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class SortProducts extends StatefulWidget {
  SortProducts({Key? key, this.sort, this.selected}) : super(key: key);
  String? selected = "sort";
  Function(String?)? sort;

  @override
  State<SortProducts> createState() => _SortProductsState();
}

class _SortProductsState extends State<SortProducts> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      value: widget.selected,
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        size: 25,
        color: Colors.black,
      ),
      items: {
        "Sort": " ",
        "Price High To Low ": "pricedesc",
        "Price Low To High": "priceasc",
        "What's New": "freshness"
      }.entries.map((e) {
        return DropdownMenuItem(value: e.value, child: Text(e.key));
      }).toList(),
      onChanged: widget.sort,
    );
  }
}
