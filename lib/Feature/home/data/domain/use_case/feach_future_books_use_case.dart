// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:new_bookely_app/Feature/home/data/domain/entitis/book_entity.dart';
import 'package:new_bookely_app/Feature/home/data/domain/repos/home_repo.dart';
import 'package:new_bookely_app/core/errors/failure.dart';
import 'package:new_bookely_app/core/useCase/use_cases.dart';

class FeachFeatureBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FeachFeatureBooksUseCase(
    this.homeRepo,
  );

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    // TODO: implement call
    return await homeRepo.fetchFeatureBooks();
  }
}
