import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/domain/models/countries.dart';

abstract class AsosCountriesStates {}

class AsosInitialCountriesState extends AsosCountriesStates {}

class AsosFailureCountriesState extends AsosCountriesStates {
  AsosFailureCountriesState(this.failure);
  Failure failure;
}

class AsosLoadingCountriesState extends AsosCountriesStates {}

class AsosSuccessCountriesState extends AsosCountriesStates {
  List<Country> countries;
  AsosSuccessCountriesState(this.countries);
}
class AsosSuccessSaveCountryState extends AsosCountriesStates {
  Country country;
  AsosSuccessSaveCountryState(this.country);
}
class AsosFailedSaveCountryState extends AsosCountriesStates {
Exception error;
  AsosFailedSaveCountryState(this.error);
}
