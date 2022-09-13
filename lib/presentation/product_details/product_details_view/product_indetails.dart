import 'package:asos_app/domain/models/product_details.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:asos_app/presentation/resources/fonts_manager.dart';
import 'package:asos_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';

class ProductInDetails extends StatelessWidget {
  const ProductInDetails({Key? key, required this.productDetails})
      : super(key: key);
  final ProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        foregroundColor: ColorManager.black,
        centerTitle: false,
        title: const Text(
          "Product Details",
          style:
              TextStyle(color: ColorManager.black, fontWeight: FontWeight.w600),
        ),
        backgroundColor: ColorManager.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: HtmlWidget(
                productDetails.description,
                customStylesBuilder: (element) {
                  if (element.localName=='strong') {
                    return {'color': 'black',
                      'font-weight': 'bold',
                      'text-decoration-line':'none'};
                  }
                  return null;
                },
                textStyle: const TextStyle(fontSize: FontSize.s16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: Text(
                "productCode",
                style: TextStyle(fontSize: FontSize.s16,color: ColorManager.lightGrey,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16),
              child: Text(
                productDetails.productCode,
                style: const TextStyle(fontSize: FontSize.s16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: Text(
                "Brand",
                style: TextStyle(fontSize: FontSize.s16,color: ColorManager.lightGrey,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16),
              child: HtmlWidget(
                productDetails.brand.description,
               textStyle: const TextStyle(fontSize: FontSize.s16),
                customStylesBuilder: (element) {
                  if (element.localName=='strong') {
                    return {'color': 'black',
                      'font-weight': 'bold',
                      'text-decoration-line':'none'};
                  }
                  return null;
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: Text(
                "Size & Fit",
                style: TextStyle(fontSize: FontSize.s16,color: ColorManager.lightGrey,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16),
              child: HtmlWidget(
                productDetails.info.sizeAndFit,
                textStyle: const TextStyle(fontSize: FontSize.s16),
                customStylesBuilder: (element) {
                  if (element.localName=='strong') {
                    return {'color': 'black',
                      'font-weight': 'bold',
                      'text-decoration-line':'none'};
                  }
                  return null;
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: Text(
                "Look After Me",
                style: TextStyle(fontSize: FontSize.s16,color: ColorManager.lightGrey,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16),
              child: HtmlWidget(
                productDetails.info.careInfo,
                textStyle: const TextStyle(fontSize: FontSize.s16),
                customStylesBuilder: (element) {
                  if (element.localName=='strong') {
                    return {'color': 'black',
                      'font-weight': 'bold',
                      'text-decoration-line':'none'};
                  }
                  return null;
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.s16, vertical: AppSize.s16),
              child: Text(
                "About Me",
                style: TextStyle(fontSize: FontSize.s16,color: ColorManager.lightGrey,fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.s16),
              child: HtmlWidget(
                productDetails.info.aboutMe,
                textStyle: const TextStyle(fontSize: FontSize.s16),
                customStylesBuilder: (element) {
                  if (element.localName=='strong') {
                    return {'color': 'black',
                      'font-weight': 'bold',
                      'text-decoration-line':'none'};
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
