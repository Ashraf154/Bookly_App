 // هنا ابدا استخدم ال hive 
 // الخطوات 
 /*
 1 نزل (hive,hive flutter,hive generatorوbuild runner)
 2 روح علي ookentity وبص عليه 
 3 طبق لكومند بقي هتلاقيه في فيديو رقم 11
 4 روح علي main.dart واكتب ( Hive.registerAdapter(BookEntityAdapter());و Hive.openBox)
 
 
  */


import 'package:bookly/features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
 List<BookEntity> fetchFeaturedBooks();
   List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }

}