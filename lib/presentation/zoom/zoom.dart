import 'package:asos_app/app/di.dart';
import 'package:asos_app/presentation/zoom/show_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'ProductsCubit/products_cubit.dart';
import 'ProductsCubit/products_states.dart';
import 'menu_screen.dart';

class Zoom extends StatelessWidget {
  Zoom({Key? key, required this.id}) : super(key: key);
  final String id;
  ZoomDrawerController z = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => instance<ProductsCubit>()..getProducts(id: id),
        child: ZoomDrawer(
          overlayBlur: 0.8,
          controller: z,
          borderRadius: 24,
          style: DrawerStyle.style1,
          openCurve: Curves.fastOutSlowIn,
          disableDragGesture: false,
          mainScreenTapClose: true,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
          duration: const Duration(milliseconds: 500),
          menuBackgroundColor: Colors.white,
          showShadow: true,
          angle: 0.0,
          clipMainScreen: true,
          mainScreen: ShowProducts(
            id: id,
          ),
          menuScreen: Menu(
            id: id,
          ),
        ));
  }
}
