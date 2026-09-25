import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/use%20case/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubitCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubitCubit(this.featuredBooksUseCase)
    : super(FeaturedBooksCubitInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksCubitLoading());
    var result = await featuredBooksUseCase.call();
    result.fold(
      (failure) {
        emit(FeaturedBooksCubitFailure(failure.message));
      },
      (books) {
        emit(FeaturedBooksCubitSuccess(books));
      },
    );
  }
}
