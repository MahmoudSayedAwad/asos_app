import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/strings_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSize.s8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s8),
        color: ColorManager.grey3,
      ),
      child: TextField(
        decoration:InputDecoration(
          icon:  const Icon(Icons.search,color: ColorManager.green,),



          label: Text( AppStrings.search,
            style: Theme.of(context).textTheme.headlineMedium,),

        ),


      ),
    );
  }
}