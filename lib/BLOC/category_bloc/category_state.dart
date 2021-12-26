part of 'category_bloc.dart';

enum CategoryStatus { initial, success, failure, loading }

class CategoryState extends Equatable {
  const CategoryState();
  @override
  List<Object> get props => [];
}
// class CategoryState extends Equatable {
//   const CategoryState(
//       {this.category, this.status,this.loading});
//   // const CategoryState(
//   //     {this.status = CategoryStatus.initial,
//   //     this.category = const <Cateogry>[],
//   //     this.loading = CategoryStatus.loading});

//   final List<Category> category;
//   final bool status;
//   final bool loading;

//   // const CategoryLoaded(this.categories);

//   CategoryState copyWith(
//       {bool? status, List<Category>? category, bool? loading}) {
//     return CategoryState(
//       status: status ?? this.status,
//       category: category ?? this.category,
//       loading: loading ?? this.loading,
//     );
//   }

//   @override
//   String toString() => 'product Loaded ${category.length}';

//   @override
//   List<Object> get props => [status, category, loading];
// }

// class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {
  @override
  List<Object> get props => [];
}

class FetchCategory extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryLoaded extends CategoryState {
  final List<Product> categories;

  CategoryLoaded({required this.categories});

  CategoryLoaded copyWith(
    List<Product> categories,
    // bool hasReachedMax,
  ) {
    return CategoryLoaded(categories: categories);
  }

  @override
  String toString() => 'product Loaded ${categories.length}';

  @override
  List<Object> get props => [categories];
  // List<Object> get props => [];
}
