import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/failure/failure.dart';
import 'package:movie_app/core/resources/usecase/usecase.dart';
import 'package:movie_app/features/list_movie/domain/entity/list_movie_entity.dart';
import 'package:movie_app/features/list_movie/domain/repository/list_movie_repository.dart';

class DoGetListMovie implements UseCaseNoParam<ListMovieEntity> {
  final ListMovieRepository _repository;

  DoGetListMovie(this._repository);

  @override
  Future<Either<Failure, ListMovieEntity>> call() async {
    final result = await _repository.doGetListMovie();
    debugPrint("result in usecase: $result");
    return result.fold(
        (l) => Left(l),
        (r) => Right(ListMovieEntity(
            page: r.page ?? 0,
            total_pages: r.total_pages ?? 0,
            results: (r.results)?.map((e) => DataListMovie(
                backdrop_path: e.backdrop_path ?? '',
                id: e.id ?? 0,
                original_title: e.original_title ?? '',
                overview: e.overview ?? '',
                poster_path: e.poster_path ?? '',
                release_date: e.release_date ?? '',
                title: e.title ?? '',
                vote_average: e.vote_average ?? 0.0
            )).toList() ?? [],
            total_results: r.total_results ?? 0
        )
      )
    );
  }
}
