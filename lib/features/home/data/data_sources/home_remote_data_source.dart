import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/functions/save_books_data.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  new(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(endPoint: 'endPoint');
    List<BookEntity> books = getBookList(data);
    saveBooksData(books,Constants.kFeaturedBox);
    return books;
  }

  

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    Future<List<BookEntity>> fetchNewestBooks() async {
      var data = await apiService.get(endPoint: 'endPoint');
      List<BookEntity> books = getBookList(data);
      return books;
    }

    throw UnimplementedError();
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      //  books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
