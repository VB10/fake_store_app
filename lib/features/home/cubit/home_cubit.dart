import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../product/constant/application_constant.dart';
import '../model/product_model.dart';
import '../service/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeService) : super(const HomeState()) {
    initalComplete();
  }
  final IHomeService homeService;

  Future<void> initalComplete() async {
    await Future.microtask(() {
      emit(const HomeState(isInitial: true));
    });
    await Future.wait([fetchAllItems(), fetchAllCategories()]);
    emit(state.copyWith(selectItems: state.items));
  }

  void selectedCategories(String data) {
    emit(state.copyWith(selectItems: state.items?.where((element) => element.category == data).toList()));
  }

  Future<void> fetchNewItems() async {
    if (state.isLoading ?? false) {
      return;
    }
    _changeLoading();
    int _pageNumber = (state.pageNumber ?? kOne.toInt());
    final response = await homeService.fetchAllProducts(count: ++_pageNumber * 5);
    _changeLoading();
    emit(state.copyWith(items: response, pageNumber: _pageNumber));
  }

  Future<void> fetchAllItems() async {
    _changeLoading();
    final response = await homeService.fetchAllProducts();
    emit(state.copyWith(items: response ?? []));
    _changeLoading();
  }

  void updateList(int index, ProductModel? model) {
    if (model != null) {
      emit(state.copyWith(isUpdated: false));
      state.items?[index].price = (model.price ?? kZero) + 300;
      emit(state.copyWith(isUpdated: true));
    }
  }

  Future<void> fetchAllCategories() async {
    final response = await homeService.fetchAllCategories();
    emit(state.copyWith(categories: response));
  }

  void _changeLoading() {
    emit(state.copyWith(isLoading: !(state.isLoading ?? false)));
  }
}
