import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'ProductsCubit/products_cubit.dart';
import 'ProductsCubit/products_states.dart';

class Menu extends StatefulWidget {
  Menu({
    Key? key,
    required this.id,
  }) : super(key: key);
  final ScrollController scrollController = ScrollController();
  final String id;
  int selectedToExpand = -1;
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ProductsCubit productsCubit = ProductsCubit.get(context);

          return Stack(
            children: [
              if (state is SuccessProductsState)
                SizedBox(
                  width: double.infinity,
                  child: Scaffold(
                    backgroundColor: ColorManager.white,
                    appBar: AppBar(
                      elevation: 0,
                      backgroundColor: ColorManager.white,
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
                    body: SingleChildScrollView(
                      controller: widget.scrollController,
                      child: Column(
                        children: [
                          Container(
                            height: 1,
                            color: Colors.black,
                          ),
                          Container(
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: ListView.separated(
                              key: Key(
                                  'builder ${widget.selectedToExpand.toString()}'), //attention
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return FilterMenu(
                                  i: index,
                                  categoryId: widget.id,
                                  selectedToExpand: widget.selectedToExpand,
                                );
                              },
                              separatorBuilder: (context, i) {
                                return const SizedBox(
                                  height: 1,
                                );
                              },
                              itemCount:
                                  productsCubit.productsModel.facets.length,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                onPressed: () {
                                  productsCubit.products = [];
                                  productsCubit.offset = 0;
                                  productsCubit.getProducts(id: widget.id);
                                  ZoomDrawer.of(context)?.close();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    'Filter',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(color: ColorManager.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              if (state is LoadingProductsState)
                const Center(
                    child: CircularProgressIndicator(
                  color: ColorManager.green,
                )),
            ],
          );
        });
  }
}

class FilterMenu extends StatefulWidget {
  FilterMenu(
      {Key? key,
      required this.i,
      required this.categoryId,
      required this.selectedToExpand})
      : super(key: key);
  final int i;
  String categoryId;
  int selectedToExpand;
  double selectedPrice=0.0;

  @override
  State<FilterMenu> createState() => _FilterMenuState();
}

class _FilterMenuState extends State<FilterMenu> {
  @override
  Widget build(BuildContext context) {
    ProductsCubit cubit = ProductsCubit.get(context);

    return ExpansionTile(
      collapsedTextColor: ColorManager.black,
      textColor: ColorManager.green,
      onExpansionChanged: (isExpanded) {
        setState(() {
          if (isExpanded) {
            const Duration(seconds: 20000);
            widget.selectedToExpand = widget.i;
          } else {
            widget.selectedToExpand = -1;
          }
        });

        //cubit.onExpansion(isExpanded, widget.i);
      },
      key: Key(widget.i.toString()),
      initiallyExpanded: widget.i == widget.selectedToExpand,
      expandedAlignment: Alignment.topLeft,
      title: Text(
        cubit.productsModel.facets[widget.i].name,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          // color: ColorManager.green
        ),
      ),
      children: [
       /* if(cubit.productsModel.facets[widget.i].name.toLowerCase()=="price range")
          Slider(value: widget.selectedPrice, onChanged: (v){

          }),*/
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 4,
            children: cubit.productsModel.facets[widget.i].facetValues.map((p) {
              return FilterChip(
                selected: cubit.query[cubit.productsModel.facets[widget.i].id]
                        ?.split(',')
                        .contains(p.id) ??
                    false,
                label: Text(
                  "${p.name} (${p.count})",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onSelected: (bool value) {
                  setState(() {
                    if (value) {
                      if (cubit.query[cubit.productsModel.facets[widget.i].id]
                              ?.isEmpty ??
                          true) {
                        cubit.query[cubit.productsModel.facets[widget.i].id] = p.id;
                        if (kDebugMode) {
                          print(value);
                          print(
                              cubit.query[cubit.productsModel.facets[widget.i].id]);
                        }
                      } else {
                        cubit.query[cubit.productsModel.facets[widget.i].id] =
                            '${cubit.query[cubit.productsModel.facets[widget.i].id]},${p.id}';
                        if (kDebugMode) {
                          print(
                              cubit.query[cubit.productsModel.facets[widget.i].id]);
                        }
                      }
                    } else {
                      cubit.query.update(cubit.productsModel.facets[widget.i].id,
                          (value) {
                        List<String> s = value.split(',');
                        s.remove(p.id);
                        String v = s.join(',');
                        if (kDebugMode) {
                          print(v);
                        }

                        return v;
                      });
                      if (kDebugMode) {
                        print(cubit.query[cubit.productsModel.facets[widget.i].id]);
                      }
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
