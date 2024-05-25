import 'package:new_bookely_app/Feature/home/data/domain/entitis/Book_entity.dart';
import 'package:new_bookely_app/Feature/home/data/model/booksmodels/booksmodels.dart';
import 'package:new_bookely_app/core/utils/apiServes.dart';

abstract class HomeRemodeDataSourse {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewsBooks();
}

class HomeRemodeDataSourseImp extends HomeRemodeDataSourse {
  final ApiServes apiServes;

  HomeRemodeDataSourseImp(this.apiServes);
  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await apiServes.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programing');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() async {
    var data = await apiServes.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=Flutter');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(
        Booksmodels.fromJson(bookMap),
      );
    }
    return books;
  }
}
