// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListMovieEntity _$$_ListMovieEntityFromJson(Map<String, dynamic> json) =>
    _$_ListMovieEntity(
      page: json['page'] as int,
      total_pages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => DataListMovie.fromJson(e as Map<String, dynamic>))
          .toList(),
      total_results: json['total_results'] as int,
    );

Map<String, dynamic> _$$_ListMovieEntityToJson(_$_ListMovieEntity instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.total_pages,
      'results': instance.results,
      'total_results': instance.total_results,
    };

_$_DataListMovie _$$_DataListMovieFromJson(Map<String, dynamic> json) =>
    _$_DataListMovie(
      backdrop_path: json['backdrop_path'] as String,
      id: json['id'] as int,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String,
      poster_path: json['poster_path'] as String,
      release_date: json['release_date'] as String,
      title: json['title'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
    );

Map<String, dynamic> _$$_DataListMovieToJson(_$_DataListMovie instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdrop_path,
      'id': instance.id,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'vote_average': instance.vote_average,
    };
