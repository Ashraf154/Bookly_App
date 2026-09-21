import 'package:bookly/features/home/domain/entities/book_entity.dart';
// function with no implementation
abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();

}
