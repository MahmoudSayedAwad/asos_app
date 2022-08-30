import 'package:asos_app/domain/usecase/get_country_usecase.dart';
import 'package:asos_app/presentation/countries_page/countries_bloc/countries_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AsosCountriesCubit extends Cubit<AsosCountriesStates> {
  AsosCountriesCubit(this._getCountryUseCase)
      : super(AsosInitialCountriesState());

  static AsosCountriesCubit get(context) => BlocProvider.of(context);

  final GetCountryUseCase _getCountryUseCase;

  void getCountries({
    String? language,
  }) async {
    emit(AsosLoadingCountriesState());

    (await _getCountryUseCase
            .execute(GetCountryUseCaseInput(language: language)))
        .fold((failure) {
      // left -> failure
      emit(AsosFailureCountriesState(failure));
    }, (data) {
      emit(AsosSuccessCountriesState(data));
    });
  }
}
