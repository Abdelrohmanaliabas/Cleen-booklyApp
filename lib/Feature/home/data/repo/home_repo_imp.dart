import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:new_bookely_app/Feature/home/data/dataSourse/home_local_data_sourse.dart';
import 'package:new_bookely_app/Feature/home/data/dataSourse/home_remote_data_sourse.dart';
import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';
import 'package:new_bookely_app/Feature/home/data/domain/repos/home_repo.dart';
import 'package:new_bookely_app/core/errors/failure.dart';

import '../domain/repos/home_repo.dart';

class HomeRepoImp extends HomeRepo {
  final HomeRemoteDataSourse homeRemoteDataSourse;
  final HomeLocalDataSourse homeLocalDataSourse;

  HomeRepoImp(
      {required this.homeRemoteDataSourse, required this.homeLocalDataSourse});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks() async {
    try {
      var bookList = homeLocalDataSourse.fetchFeatureBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      var books = await homeRemoteDataSourse.fetchFeatureBooks();

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    try {
      var bookList = homeLocalDataSourse.fetchNewsBooks();
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      var books = await homeRemoteDataSourse.fetchNewsBooks();

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
