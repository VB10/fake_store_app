part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState(
      {this.items,
      this.isUpdated = false,
      this.isLoading,
      this.selectItems,
      this.categories,
      this.isInitial = false,
      this.pageNumber});

  final List<ProductModel>? items;
  final List<ProductModel>? selectItems;
  final bool? isLoading;
  final List<String>? categories;

  final bool isUpdated;

  final bool isInitial;
  final int? pageNumber;

  @override
  List<Object?> get props => [items, isLoading, categories, pageNumber, isUpdated, selectItems];

  HomeState copyWith(
      {List<ProductModel>? items,
      List<ProductModel>? selectItems,
      bool? isLoading,
      List<String>? categories,
      bool? isUpdated,
      int? pageNumber}) {
    return HomeState(
        items: items ?? this.items,
        isUpdated: isUpdated ?? this.isUpdated,
        selectItems: selectItems ?? this.selectItems,
        isLoading: isLoading ?? this.isLoading,
        categories: categories ?? this.categories,
        pageNumber: pageNumber ?? this.pageNumber);
  }
}
