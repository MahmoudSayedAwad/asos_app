import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/fonts_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return _get_Cart_Card(context);
            },
          ),
        ),
        _get_check_out_card(),
      ],
    );
  }

  Widget _get_Cart_Card(BuildContext context) {
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
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontSize: FontSize.s14, color: ColorManager.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                get_price_and_quantity_widget(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row get_price_and_quantity_widget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("50 EGP",
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: ColorManager.black)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(
                Icons.remove_circle_outline,
                color: ColorManager.darkGrey,
                size: AppSize.s18,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: AppSize.s4),
            Text("1", style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(width: AppSize.s4),
            IconButton(
              icon: const Icon(
                Icons.add_circle_outline,
                color: ColorManager.darkGrey,
                size: AppSize.s18,
              ),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }

  Widget _get_check_out_card() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p16,
        horizontal: AppPadding.p32,
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text.rich(
              TextSpan(
                text: "Total:\n",
                children: [
                  TextSpan(
                    text: "\$337.15",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 190,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: ColorManager.white, shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: ColorManager.green,
                ),
                onPressed: () {},
                child: const Text(
                  "Check Out",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
