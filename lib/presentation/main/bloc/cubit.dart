import 'package:asos_app/domain/models/categories.dart';
import 'package:asos_app/domain/usecase/get_categories.dart';
import 'package:asos_app/presentation/main/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AsosAppCubit extends Cubit<AsosAppStates> {
  AsosAppCubit(this._getCategoryUseCase) : super(AsosAppInitialState());

  static AsosAppCubit get(context) => BlocProvider.of(context);

  final GetCategoryUseCase _getCategoryUseCase;
  late final Categories categories;

  void getCategories({
    String? country,
    String? language,
  }) async {
    emit(AsosLoadingCategoriesState());

    (await _getCategoryUseCase.execute(
            GetCategoryUseCaseInput(country: country, language: language)))
        .fold((failure) {
      // left -> failure
      emit(AsosFailureCategoriesState(failure));
    }, (data) {
      categories = data;
      emit(AsosSuccessCategoriesState(data));
    });
  }
}
