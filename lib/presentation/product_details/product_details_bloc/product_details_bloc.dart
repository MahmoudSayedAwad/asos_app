import 'package:asos_app/domain/models/product_details.dart';
import 'package:asos_app/presentation/product_details/product_details_bloc/product_details_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecase/get_product_details_usecase.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsStates> {
  ProductDetailsCubit(this._getProductDetailsUseCase)
      : super(ProductDetailsInitialState());

  static ProductDetailsCubit get(context) => BlocProvider.of(context);
  final GetProductDetailsUseCase _getProductDetailsUseCase;
  Map<String, String> query = {};
  late ProductDetails productDetailsModel;

  void getProductDetails({
    required String id,
    //  Map <String,dynamic>?queries
  }) async {
    emit(LoadingProductDetailsState());

    (await _getProductDetailsUseCase.execute(GetProductDetailsUseCaseInput(

        queries: query, productId: id)))
        .fold((failure) {
      // left -> failure
     // print(failure.toString());

      emit(ErrorProductDetailsState(
        error: failure.message,
      ));
    }, (data) {
      productDetailsModel = data;
      emit(SuccessProductDetailsState(productDetails: data));
    });
  }


}