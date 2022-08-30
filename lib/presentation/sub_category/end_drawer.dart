
import 'dart:ui';

import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';


class EndDrawer extends StatefulWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  _EndDrawerState createState() => _EndDrawerState();
}

class _EndDrawerState extends State<EndDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomLeft: Radius.circular(15),
      ),
      child: BackdropFilter(
        filter:  ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Drawer(
          child: Container(
            color: ColorManager.white,
            child: Column(
              children: [
                _drawerHeader(),
                _viewChild(),
                _categoryChild(),
                _conditionChild(),
                _materialChild(),
                _colorChild(),
                _brandChild(),
                _sizeChild(),
                _priceRangChild(),
                _drawerBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _drawerHeader() {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.all(16.0),
      color: ColorManager.white,
      child: DrawerHeader(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.filter_list,
                  color: ColorManager.grey,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Filter',
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(
                Icons.close,
                color: ColorManager.darkGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _viewChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'View',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'Thumbnails',
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Category',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'Chairs',
                style:  TextStyle(
                  color: ColorManager.black,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),

              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _conditionChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Condition',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'Brand New',
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _materialChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Material',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'All materials',
                style:  TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _colorChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Colour',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                clipBehavior: Clip.none, alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 30.0,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xFF606F9A),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.0,
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xFF7BCA89),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: const Color(0xFFF7D6A9),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 50.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _brandChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Brand',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'All Brands',
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _sizeChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Size',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                'Large',
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _priceRangChild() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Price Range',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 16.0,
            ),
          ),
          Row(
            children: [
              const Text(
                '0\$ - 30\$',
                style: TextStyle(
                  color: ColorManager.darkGrey,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white10,
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    color: ColorManager.darkGrey,
                    size: 16.0,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawerBottom() {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32.0, left: 16.0, right: 16.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
                primary: ColorManager.green, ),

              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'APPLY FILTERS',
                  style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontSize: 20.0,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}