import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/fonts_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../resources/values_manager.dart';

class FavouritesView extends StatefulWidget {
  const FavouritesView({Key? key}) : super(key: key);

  @override
  State<FavouritesView> createState() => _FavouritesViewState();
}

class _FavouritesViewState extends State<FavouritesView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return _buildFavouriteProduct(context);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 1,
                  thickness: 1,
                  color: ColorManager.grey,
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFavouriteProduct(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
    margin: const EdgeInsets.symmetric(vertical: AppSize.s8),
    width: double.infinity,
    height: AppSize.s120,
    child: Row(
      children: [
        Card(
            elevation: AppSize.s0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s16),
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.asos-media.com/products/asos-4505-icon-yoga-cami-crop-top-with-inner-bra/21920130-1-oatmeal",
                fit: BoxFit.cover,
                width: AppSize.s120,
                height: AppSize.s120,
              ),
            )),
        const SizedBox(
          width: AppSize.s8,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "ASOS 4505 icon yoga cami crop top with inner bra",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: FontSize.s14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),

        IconButton(
          onPressed: () {

          },
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
        ),
      ],
    ),
  );
}
