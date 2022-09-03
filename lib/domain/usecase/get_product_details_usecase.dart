import 'package:asos_app/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import '../models/product_details.dart';
import '../repositry/repository.dart';
import 'base_usecase.dart';

class GetProductDetailsUseCase extends BaseUseCase<GetProductDetailsUseCaseInput, ProductDetails> {
  Repository repository;

  GetProductDetailsUseCase(this.repository);

  @override
  Future<Either<Failure,ProductDetails >> execute(GetProductDetailsUseCaseInput input) {
    return repository.getProductDetails(input.productId,input.queries);
  }
}
class GetProductDetailsUseCaseInput {

  String productId;

  Map<String,dynamic>? queries;

  GetProductDetailsUseCaseInput({required this.productId,this.queries});
}