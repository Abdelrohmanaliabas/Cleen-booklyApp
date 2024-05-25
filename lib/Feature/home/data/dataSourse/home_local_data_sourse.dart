import 'package:new_bookely_app/Feature/home/data/domain/entitis/Book_entity.dart';

abstract class HomeLocalDataSourse {
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourseImp extends HomeLocalDataSourse {
  @override
  List<BookEntity> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
