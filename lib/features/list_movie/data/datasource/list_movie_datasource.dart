import 'package:dartz/dartz.dart';
import 'package:movie_app/core/failure/failure.dart';
import 'package:movie_app/features/list_movie/data/model/response/list_movie_response.dart';

abstract class ListMovieDataSource {
  Future<Either<Failure, ListMovieResponse>> doGetListMovie();
}