



import 'package:asos_app/data/network/failure.dart';

import 'package:asos_app/domain/models/products.dart';
import 'package:dartz/dartz.dart';

import '../repositry/repository.dart';
import 'base_usecase.dart';

class FilterProductsUseCase extends BaseUseCase<FilterProductsUseCaseInput, Products> {
  Repository repository;

  FilterProductsUseCase(this.repository);

  @override
  Future<Either<Failure, Products>> execute(FilterProductsUseCaseInput input) {
    return repository.getProducts(input.store, input.offset,input.categoryId, input.limit,input.queries);
  }
}
class FilterProductsUseCaseInput {
  String store;
  String offset;
  String categoryId;
  String limit;
  Map<String,dynamic>? queries;

  FilterProductsUseCaseInput({required this.store,required this.offset,required this.categoryId,required this.limit,this.queries});
}