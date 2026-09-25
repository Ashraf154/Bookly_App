import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  new(this.message);
}

class ServerFailure extends Failure {
  new(super.message);

  factory ServerFailure.fromDioERror(DioError e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection timeout ');
      case DioExceptionType.sendTimeout:
          return ServerFailure('Send timeout ');
      case DioExceptionType.receiveTimeout:
          return ServerFailure('Recieve timeout ');
      case DioExceptionType.badCertificate:
         return ServerFailure('bad req timeout ');
      case DioExceptionType.badResponse:
          return ServerFailure('connection timeout ');
      case DioExceptionType.cancel:
          return ServerFailure('connection timeout ');
      case DioExceptionType.connectionError:
        return ServerFailure('connection timeout ');
      case DioExceptionType.unknown:
          return ServerFailure('connection timeout ');
      case DioExceptionType.transformTimeout:
          return ServerFailure('connection timeout ');
    }
  }
}
