import 'package:hive_flutter/adapters.dart';
import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';
import 'package:new_bookely_app/Feature/home/data/model/booksmodels/booksmodels.dart';
import 'package:new_bookely_app/Feature/splash/presentation/constant.dart';
import 'package:new_bookely_app/core/utils/apiServes.dart';
import 'package:new_bookely_app/core/utils/functions/save_data.dart';

abstract class HomeRemoteDataSourse {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewsBooks();
}

class HomeRemodeDataSourseImp extends HomeRemoteDataSourse {
  final ApiServes apiServes;

  HomeRemodeDataSourseImp(this.apiServes);
  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await apiServes.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=programing');
    List<BookEntity> books = getBooksList(data);
    saveData(books, kfeatureBox);
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
