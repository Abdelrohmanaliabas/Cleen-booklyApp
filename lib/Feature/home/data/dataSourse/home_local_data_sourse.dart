import 'package:hive_flutter/adapters.dart';
import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';
import 'package:new_bookely_app/Feature/splash/presentation/constant.dart';

abstract class HomeLocalDataSourse {
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchNewsBooks();
}

class HomeLocalDataSourseImp extends HomeLocalDataSourse {
  @override
  List<BookEntity> fetchFeatureBooks() {
    var box = Hive.box<BookEntity>(kfeatureBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    var box = Hive.box<BookEntity>(kNewsBox);
    return box.values.toList();
  }
}
