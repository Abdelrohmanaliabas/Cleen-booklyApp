import 'package:dartz/dartz.dart';
import 'package:new_bookely_app/core/errors/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam {}
