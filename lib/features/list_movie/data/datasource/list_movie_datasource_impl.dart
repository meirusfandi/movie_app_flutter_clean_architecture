import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/failure/failure.dart';
import 'package:movie_app/core/resources/network/rest_client.dart';
import 'package:movie_app/features/list_movie/data/datasource/list_movie_datasource.dart';
import 'package:movie_app/features/list_movie/data/model/response/list_movie_response.dart';
import 'package:movie_app/utils/constants.dart';

class ListMovieDataSourceImpl implements ListMovieDataSource {
  final RestClient _restClient;

  ListMovieDataSourceImpl(this._restClient);

  @override
  Future<Either<Failure, ListMovieResponse>> doGetListMovie() async{
    try {
      final response = await _restClient.doGetListMovie(apiKey);
      return Future.value(Right(response));
    } on DioError catch (e) {
      return Left(ListMovieFailure(exception: e));
    } catch (e) {
      return Left(ListMovieFailure(otherException: e.toString()));
    }
  }
}