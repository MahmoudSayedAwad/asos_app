

import 'package:asos_app/domain/models/products.dart';

abstract class ProductsStates {}

class ProductsInitialState extends ProductsStates {}

class LoadingProductsState extends ProductsStates {}

class SuccessProductsState extends ProductsStates {
  final List<Product> products;

  SuccessProductsState({
    required this.products,
  });
}
class ExpansionChanged extends ProductsStates{}

class ErrorProductsState extends ProductsStates {
  final String error;

  ErrorProductsState({
    required this.error,
  });
}
