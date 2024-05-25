import 'package:new_bookely_app/Feature/home/data/domain/entitis/Book_entity.dart';

abstract class HomeRemodeDataSourse {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewsBooks();
}

class HomeRemodeDataSourseImp extends HomeRemodeDataSourse {
  @override
  Future<List<BookEntity>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
