import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_movie_entity.freezed.dart';
part 'list_movie_entity.g.dart';

@freezed
class ListMovieEntity with _$ListMovieEntity {
  const factory ListMovieEntity({
    required int page,
    required int total_pages,
    required List<DataListMovie> results,
    required int total_results
  }) = _ListMovieEntity;

  factory ListMovieEntity.fromJson(Map<String, Object?> json) => _$ListMovieEntityFromJson(json);
}

@freezed
class DataListMovie with _$DataListMovie {
  const factory DataListMovie({
    required String backdrop_path,
    required int id,
    required String original_title,
    required String overview,
    required String poster_path,
    required String release_date,
    required String title,
    required double vote_average
  }) = _DataListMovie;

  factory DataListMovie.fromJson(Map<String, Object?> json) => _$DataListMovieFromJson(json);
}