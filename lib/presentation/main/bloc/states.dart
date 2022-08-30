import 'package:asos_app/data/network/failure.dart';
import 'package:asos_app/domain/models/categories.dart';

abstract class AsosAppStates {}

class AsosAppModeState extends AsosAppStates {}

class AsosAppInitialState extends AsosAppStates {}

class ChangeDropDownItemState extends AsosAppStates {}

class AsosLoadingHomeDataState extends AsosAppStates {}

class AsosSuccessHomeDataState extends AsosAppStates {}

class AsosErrorHomeDataState extends AsosAppStates {}

class AsosSuccessCategoriesState extends AsosAppStates {
  Categories categories;
  AsosSuccessCategoriesState(this.categories);
}

class AsosLoadingCategoriesState extends AsosAppStates {}

class AsosFailureCategoriesState extends AsosAppStates {
  AsosFailureCategoriesState(this.failure);
  Failure failure;
}

class AsosChangeTabBarViewState extends AsosAppStates {
  AsosChangeTabBarViewState(this.tabIndex);
  int tabIndex;
}

class AsosChangeFavoritesState extends AsosAppStates {}

class AsosLoadingUserDataState extends AsosAppStates {}

class AsosSuccessUserDataState extends AsosAppStates {
  //final ShopLoginModel loginModel;

  //ShopSuccessUserDataState(this.loginModel);
}

class AsosErrorUserDataState extends AsosAppStates {}

class AsosLoadingUpdateUserState extends AsosAppStates {}

class AsosSuccessUpdateUserState extends AsosAppStates {
  //final ShopLoginModel loginModel;

  //ShopSuccessUpdateUserState(this.loginModel);
}

class AsosErrorUpdateUserState extends AsosAppStates {}

class AsosSuccessChangeFavoritesState extends AsosAppStates {
//  final ChangeFavoritesModel model;

  //ShopSuccessChangeFavoritesState(this.model);
}

class AsosErrorChangeFavoritesState extends AsosAppStates {}

class AsosLoadingGetFavoritesState extends AsosAppStates {}

class AsosSuccessGetFavoritesState extends AsosAppStates {}

class AsosErrorGetFavoritesState extends AsosAppStates {}
