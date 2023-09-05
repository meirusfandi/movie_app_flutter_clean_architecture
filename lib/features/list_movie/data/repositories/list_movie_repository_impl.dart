import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/failure/failure.dart';
import 'package:movie_app/features/list_movie/data/datasource/list_movie_datasource.dart';
import 'package:movie_app/features/list_movie/data/model/response/list_movie_response.dart';
import 'package:movie_app/features/list_movie/domain/repository/list_movie_repository.dart';

class ListMovieRepositoryImpl implements ListMovieRepository {
  final ListMovieDataSource _dataSource;

  ListMovieRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, ListMovieResponse>> doGetListMovie() async {
    final result = await _dataSource.doGetListMovie();
    debugPrint("result in repo: $result");
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
