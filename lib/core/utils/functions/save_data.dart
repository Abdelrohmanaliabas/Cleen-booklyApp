import 'package:hive/hive.dart';
import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';

void saveData(List<BookEntity> books, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
