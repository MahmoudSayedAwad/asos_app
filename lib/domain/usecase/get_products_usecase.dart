



import 'package:asos_app/data/network/failure.dart';

import 'package:asos_app/domain/models/products.dart';
import 'package:dartz/dartz.dart';
import '../repositry/repository.dart';
import 'base_usecase.dart';

class GetProductsUseCase extends BaseUseCase<GetProductsUseCaseInput, Products> {
  Repository repository;
  GetProductsUseCase(this.repository);

  @override
  Future<Either<Failure, Products>> execute(GetProductsUseCaseInput input) {
    return repository.getProducts(input.store, input.offset,input.categoryId, input.limit,input.country,input.currency,input.sizeSchema,input.lang,input.queries);
  }
}
class GetProductsUseCaseInput {
  String store;
  String offset;
  String categoryId;
  String limit;
  String? country;
      String? currency;
  String? sizeSchema;
      String? lang;
  Map<String,dynamic>? queries;

  GetProductsUseCaseInput({required this.store,required this.offset,required this.categoryId,required this.limit,this.queries,this.country,this.currency,this.lang,this.sizeSchema});
}