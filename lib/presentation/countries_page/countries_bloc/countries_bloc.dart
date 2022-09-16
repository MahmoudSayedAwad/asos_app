import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/domain/usecase/get_country_usecase.dart';
import 'package:asos_app/presentation/countries_page/countries_bloc/countries_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AsosCountriesCubit extends Cubit<AsosCountriesStates> {
  AsosCountriesCubit(this._getCountryUseCase, this._appPreferences)
      : super(AsosInitialCountriesState());

  static AsosCountriesCubit get(context) => BlocProvider.of(context);
  final GetCountryUseCase _getCountryUseCase;
  final AppPreferences _appPreferences;

  void getCountries({
    String? language,
  }) async {
    emit(AsosLoadingCountriesState());

    (await _getCountryUseCase.execute(GetCountryUseCaseInput(
            language: _appPreferences.getAppLanguage().language)))
        .fold((failure) {
      // left -> failure
      emit(AsosFailureCountriesState(failure));
    }, (data) {
      emit(AsosSuccessCountriesState(data));
    });
  }

  void saveCountry(Country country) async {
    await _appPreferences
        .changeCountry(country)
        .then((value) => emit(AsosSuccessSaveCountryState(country)))
        .catchError((error) {
      emit(AsosFailedSaveCountryState(error));
    });
  }
}
