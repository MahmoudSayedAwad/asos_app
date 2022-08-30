



import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:dartz/dartz.dart';

import '../repositry/repository.dart';
import 'base_usecase.dart';

class GetCountryUseCase extends BaseUseCase<GetCountryUseCaseInput, List<Country>> {
  Repository repository;

  GetCountryUseCase(this.repository);

  @override
  Future<Either<Failure, List<Country>>> execute(GetCountryUseCaseInput input) {
    return repository.getCountries(language:input.language);
  }
}
class GetCountryUseCaseInput {
  String? language;

  GetCountryUseCaseInput({this.language});
}