import 'package:asos_app/presentation/main/bloc/cubit.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:asos_app/presentation/sub_category/sub_category_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/models/categories.dart';

Widget categoryItemBuilder(BuildContext context, int index, List<Children> c,int tabIndex) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (ctx) => BlocProvider.value(
                  value: context.read<AsosAppCubit>(),
                  child: SubCategory(childIndex: index,tabIndex:tabIndex))));
    },
    child: Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        CachedNetworkImage(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.15,
          imageUrl: c[index].content.mobileImageUrl,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.only(left: AppSize.s12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(c[index].content.title,
                  style: Theme.of(context).textTheme.displayLarge),
              if (true)
                Text(
                  c[index].content.subTitle,
                  style: Theme.of(context).textTheme.displayLarge,
                )
            ],
          ),
        )
      ],
    ),
  );
}
