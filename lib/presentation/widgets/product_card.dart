import 'package:asos_app/app/di.dart';
import 'package:asos_app/domain/models/products.dart';
import 'package:asos_app/presentation/product_details/product_details_view/product_detail_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'discountBanner.dart';

Widget buildGridProduct(Product model, context) => GestureDetector(
  onTap: (){
    initProductDetailsModule();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>  ItemDetailScreen(productId: model.id.toString(),) ,
        ),

    );
  },
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Stack(

        alignment: AlignmentDirectional.topStart,

        children: [

          CachedNetworkImage(

            fit: BoxFit.cover,

            imageUrl: 'https://${model.imageUrl}',

            width: double.infinity,

            height: 200,

          ),

          if (model.price.previous.value != 0 ||

              model.price.rrp.value != 0)

            DiscountSign(

              model: model,

            ),

        ],

      ),

      Padding(

        padding: const EdgeInsets.fromLTRB(8, 12, 0, 8),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Row(

              children: [

                Expanded(

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                      if (model.price.rrp.value != 0)

                        Text(

                          'RRP' " " '${model.price.rrp.text}',

                          style: const TextStyle(

                            decoration: TextDecoration.lineThrough,

                            fontSize: 16,

                          ),

                        ),

                      if (model.price.rrp.value == 0)

                        Text(

                          model.price.previous.text,

                          style: const TextStyle(

                            decoration: TextDecoration.lineThrough,

                            fontSize: 16,

                          ),

                        ),

                      Text(

                        model.price.current.text,

                        style: const TextStyle(

                          color: Colors.pink,

                          fontWeight: FontWeight.w700,

                          fontSize: 16,

                        ),

                      ),

                    ],

                  ),

                ),

                Padding(

                  padding: const EdgeInsets.all(6),

                  child: IconButton(

                    onPressed: () {},

                    icon: const Icon(

                      Icons.favorite_outline_outlined,

                      color: Colors.black,

                      size: 25,

                    ),

                  ),

                )

              ],

            ),

            Text(

              model.name,

              maxLines: 2,

              overflow: TextOverflow.ellipsis,

              style: const TextStyle(

                fontSize: 14.0,

                height: 1.3,

              ),

            ),

          ],

        ),

      ),

    ],

  ),
);