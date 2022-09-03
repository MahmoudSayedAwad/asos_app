import 'package:asos_app/domain/usecase/get_products_usecase.dart';
import 'package:asos_app/presentation/zoom/ProductsCubit/products_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/models/products.dart';


class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this._getProductsUseCase) : super(ProductsInitialState());
  static ProductsCubit get(context) => BlocProvider.of(context);
  final GetProductsUseCase _getProductsUseCase;

  late Products productsModel;
  bool isFetching = false;
  int offset = 0;
  List<Product> products = [];
  Map<String, String> query = {};
  int maxCount = 0;

  void getProducts({
    required String id,
    //  Map <String,dynamic>?queries
  }) async {
    emit(LoadingProductsState());

    (await _getProductsUseCase.execute(GetProductsUseCaseInput(
            categoryId: id,
            store: 'US',
            offset: offset.toString(),
            limit: '10',
            queries: query)))
        .fold((failure) {
      // left -> failure

      emit(ErrorProductsState(
        error: failure.message,
      ));
    }, (data) {
      productsModel = data;
      products.addAll(data.products);
      maxCount = data.itemCount;
      emit(SuccessProductsState(products: data.products));
      offset += 10;
    });
  }

}



