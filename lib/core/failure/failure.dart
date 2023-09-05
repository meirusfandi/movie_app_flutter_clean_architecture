import 'package:dio/dio.dart';

abstract class Failure {}

class NetworkFailure extends Failure {}

class MappingDataFailure extends Failure {}

class ListMovieFailure extends Failure {
  final DioError? exception;
  final String? otherException;

  ListMovieFailure({this.exception, this.otherException});
}

