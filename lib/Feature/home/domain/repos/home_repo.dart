import 'package:dartz/dartz.dart';
import 'package:new_bookely_app/Feature/home/domain/entitis/Book_entity.dart';
import 'package:new_bookely_app/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks();
}
