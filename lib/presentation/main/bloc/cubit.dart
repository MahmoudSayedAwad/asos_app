import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/domain/usecase/get_categories.dart';
import 'package:asos_app/presentation/main/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AsosAppCubit extends Cubit<AsosAppStates> {
  AsosAppCubit(this._getCategoryUseCase,this._appPreferences) : super(AsosAppInitialState());

  static AsosAppCubit get(context) => BlocProvider.of(context);

  final GetCategoryUseCase _getCategoryUseCase;
  final AppPreferences _appPreferences;
  late final Categories categories;

  void getCategories({
    String? country,
    String? language,
  }) async {
    emit(AsosLoadingCategoriesState());

    (await _getCategoryUseCase.execute(
            GetCategoryUseCaseInput(country: _appPreferences.getAppCountry().country, language: _appPreferences.getAppLanguage().language)))
        .fold((failure) {
      // left -> failure
      emit(AsosFailureCategoriesState(failure));
    }, (data) {
      categories = data;
      emit(AsosSuccessCategoriesState(data));
    });
  }
}
