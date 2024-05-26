import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;

  Failure(this.errMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMassage);

  factory ServerFailure.fromDioError(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeOut with api server ');
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout with api server ');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receive Timeout with api server ');
      case DioExceptionType.badCertificate:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.badResponse:
        return ServerFailure('badResponse  with api server ');
      case DioExceptionType.cancel:
        return ServerFailure('requist with api server is canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('no InterNet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps there is an error , please try again later');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your requist is not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure('there is a problem, try later');
    } else if (statusCode == 401 || statusCode == 400 || statusCode == 403) {
      return ServerFailure(response['error']['massage']);
    } else {
      return ServerFailure('there an error,try again');
    }
  }
}
