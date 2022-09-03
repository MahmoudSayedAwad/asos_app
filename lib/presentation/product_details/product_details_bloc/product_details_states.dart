import 'package:asos_app/domain/models/product_details.dart';

abstract class ProductDetailsStates {}

class ProductDetailsInitialState extends ProductDetailsStates {}

class LoadingProductDetailsState extends ProductDetailsStates {}

class SuccessProductDetailsState extends ProductDetailsStates {
  final ProductDetails productDetails;

  SuccessProductDetailsState({
    required this.productDetails,
  });
}


class ErrorProductDetailsState extends ProductDetailsStates {
  final String error;

  ErrorProductDetailsState({
    required this.error,
  });
}
