part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksCubitState {}

class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

class FeaturedBooksCubitLoading extends FeaturedBooksCubitState {}

class FeaturedBooksCubitFailure extends FeaturedBooksCubitState {
  final String errMessage;

  FeaturedBooksCubitFailure(this.errMessage);
}

class FeaturedBooksCubitSuccess extends FeaturedBooksCubitState {
 final List<BookEntity> books;

  FeaturedBooksCubitSuccess(this.books);
}
