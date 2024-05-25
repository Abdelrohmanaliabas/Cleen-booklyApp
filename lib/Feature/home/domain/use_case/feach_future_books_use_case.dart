import 'package:dartz/dartz.dart';
import 'package:new_bookely_app/Feature/home/domain/entitis/Book_entity.dart';
import 'package:new_bookely_app/Feature/home/domain/repos/home_repo.dart';
import 'package:new_bookely_app/core/errors/failure.dart';

class FeachFeatureBooksUseCase {
  final HomeRepo homeRepo;

  FeachFeatureBooksUseCase(this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks() {
    return homeRepo.fetchFeatureBooks();
  }
}
