import 'package:asos_app/domain/models/products.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'ProductsCubit/products_cubit.dart';
import 'ProductsCubit/products_states.dart';

class Menu extends StatelessWidget {
  Menu({
    Key? key,
    required this.id,
  }) : super(key: key);
  final ScrollController scrollController = ScrollController();
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ProductsCubit productsCubit=ProductsCubit.get(context);
          if (state is LoadingProductsState) {
            return const Scaffold(
                body: Center(child: CircularProgressIndicator()));
          }
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                'Filter',
                style: TextStyle(color: Colors.black),
              ),
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.close),
                onPressed: () {
                  ZoomDrawer.of(context)?.close();
                },
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: ListView.separated(
                        key: Key(
                            'builder ${productsCubit.selectedToExpand.toString()}'), //attention
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return FilterMenu(
                            i: index,
                            items: productsCubit.productsModel,
                            selected:
                            productsCubit.selectedToExpand,
                            onExpansion: productsCubit.onExpansion,
                            categoryId: id,
                          );
                        },
                        separatorBuilder: (context, i) {
                          return const SizedBox(
                            height: 1,
                          );
                        },
                        itemCount: productsCubit
                            .productsModel
                            .facets
                            .length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class FilterMenu extends StatelessWidget {
  FilterMenu(
      {Key? key,
      required this.i,
      required this.items,
      required this.selected,
      required this.onExpansion,
      required this.categoryId})
      : super(
          key: key,
        );
  final int i;
  final Products items;
  int selected;
  Function onExpansion;
  String categoryId;

  @override
  Widget build(BuildContext context) {
    ProductsCubit cubit =ProductsCubit.get(context);
    return ExpansionTile(
      onExpansionChanged: (isExpanded) {
        onExpansion(isExpanded, i);
      },
      key: Key(i.toString()),
      initiallyExpanded: i == selected,
      expandedAlignment: Alignment.topLeft,
      title: Text(
        items.facets[i].name,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 4,
            children: items.facets[i].facetValues.map((p) {
              return FilterChip(
                disabledColor: ColorManager.white,
                selected: false,
                label: Text(p.name),
                onSelected: (bool value) {
                  if (cubit.q[items.facets[i].id]?.isEmpty ?? true) {
                    cubit.q[items.facets[i].id] = p.id;
                    if (kDebugMode) {
                      print(cubit.q[items.facets[i].id]);
                    }
                  } else {
                    cubit.q[items.facets[i].id] =
                        '${cubit.q[items.facets[i].id]},${p.id}';
                    if (kDebugMode) {
                      print(cubit.q[items.facets[i].id]);
                    }
                  }
                  ProductsCubit.get(context).products = [];
                  ProductsCubit.get(context)
                      .getProducts(id: categoryId);
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
