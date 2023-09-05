import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_movie_response.freezed.dart';
part 'list_movie_response.g.dart';

@freezed
class ListMovieResponse with _$ListMovieResponse {
  const factory ListMovieResponse({
    int? page,
    int? total_pages,
    List<ListMovie>? results,
    int? total_results
  }) = _ListMovieResponse;

  factory ListMovieResponse.fromJson(Map<String, Object?> json) => _$ListMovieResponseFromJson(json);
}

@freezed
class ListMovie with _$ListMovie {
  const factory ListMovie({
    String? backdrop_path,
    int? id,
    String? original_title,
    String? overview,
    String? poster_path,
    String? release_date,
    String? title,
    double? vote_average
  }) = _ListMovie;

  factory ListMovie.fromJson(Map<String, Object?> json) => _$ListMovieFromJson(json);
}