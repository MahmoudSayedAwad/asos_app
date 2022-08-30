

import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/domain/repositry/repository.dart';
import 'package:dartz/dartz.dart';

import 'base_usecase.dart';

class GetCategoryUseCase extends BaseUseCase<GetCategoryUseCaseInput, Categories> {
  Repository repository;

  GetCategoryUseCase(this.repository);

  @override
  Future<Either<Failure, Categories>> execute(GetCategoryUseCaseInput input) {
    return repository.getCategories(country: input.country,language: input.language);
  }
}
class GetCategoryUseCaseInput {
  String? country;
  String? language;

  GetCategoryUseCaseInput({this.country, this.language});
}