// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListMovieEntity _$ListMovieEntityFromJson(Map<String, dynamic> json) {
  return _ListMovieEntity.fromJson(json);
}

/// @nodoc
mixin _$ListMovieEntity {
  int get page => throw _privateConstructorUsedError;
  int get total_pages => throw _privateConstructorUsedError;
  List<DataListMovie> get results => throw _privateConstructorUsedError;
  int get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMovieEntityCopyWith<ListMovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMovieEntityCopyWith<$Res> {
  factory $ListMovieEntityCopyWith(
          ListMovieEntity value, $Res Function(ListMovieEntity) then) =
      _$ListMovieEntityCopyWithImpl<$Res, ListMovieEntity>;
  @useResult
  $Res call(
      {int page,
      int total_pages,
      List<DataListMovie> results,
      int total_results});
}

/// @nodoc
class _$ListMovieEntityCopyWithImpl<$Res, $Val extends ListMovieEntity>
    implements $ListMovieEntityCopyWith<$Res> {
  _$ListMovieEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total_pages = null,
    Object? results = null,
    Object? total_results = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DataListMovie>,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMovieEntityCopyWith<$Res>
    implements $ListMovieEntityCopyWith<$Res> {
  factory _$$_ListMovieEntityCopyWith(
          _$_ListMovieEntity value, $Res Function(_$_ListMovieEntity) then) =
      __$$_ListMovieEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int total_pages,
      List<DataListMovie> results,
      int total_results});
}

/// @nodoc
class __$$_ListMovieEntityCopyWithImpl<$Res>
    extends _$ListMovieEntityCopyWithImpl<$Res, _$_ListMovieEntity>
    implements _$$_ListMovieEntityCopyWith<$Res> {
  __$$_ListMovieEntityCopyWithImpl(
      _$_ListMovieEntity _value, $Res Function(_$_ListMovieEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total_pages = null,
    Object? results = null,
    Object? total_results = null,
  }) {
    return _then(_$_ListMovieEntity(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total_pages: null == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<DataListMovie>,
      total_results: null == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMovieEntity implements _ListMovieEntity {
  const _$_ListMovieEntity(
      {required this.page,
      required this.total_pages,
      required final List<DataListMovie> results,
      required this.total_results})
      : _results = results;

  factory _$_ListMovieEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ListMovieEntityFromJson(json);

  @override
  final int page;
  @override
  final int total_pages;
  final List<DataListMovie> _results;
  @override
  List<DataListMovie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int total_results;

  @override
  String toString() {
    return 'ListMovieEntity(page: $page, total_pages: $total_pages, results: $results, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMovieEntity &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total_pages, total_pages) ||
                other.total_pages == total_pages) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.total_results, total_results) ||
                other.total_results == total_results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, total_pages,
      const DeepCollectionEquality().hash(_results), total_results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListMovieEntityCopyWith<_$_ListMovieEntity> get copyWith =>
      __$$_ListMovieEntityCopyWithImpl<_$_ListMovieEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMovieEntityToJson(
      this,
    );
  }
}

abstract class _ListMovieEntity implements ListMovieEntity {
  const factory _ListMovieEntity(
      {required final int page,
      required final int total_pages,
      required final List<DataListMovie> results,
      required final int total_results}) = _$_ListMovieEntity;

  factory _ListMovieEntity.fromJson(Map<String, dynamic> json) =
      _$_ListMovieEntity.fromJson;

  @override
  int get page;
  @override
  int get total_pages;
  @override
  List<DataListMovie> get results;
  @override
  int get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_ListMovieEntityCopyWith<_$_ListMovieEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

DataListMovie _$DataListMovieFromJson(Map<String, dynamic> json) {
  return _DataListMovie.fromJson(json);
}

/// @nodoc
mixin _$DataListMovie {
  String get backdrop_path => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get original_title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get poster_path => throw _privateConstructorUsedError;
  String get release_date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get vote_average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataListMovieCopyWith<DataListMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListMovieCopyWith<$Res> {
  factory $DataListMovieCopyWith(
          DataListMovie value, $Res Function(DataListMovie) then) =
      _$DataListMovieCopyWithImpl<$Res, DataListMovie>;
  @useResult
  $Res call(
      {String backdrop_path,
      int id,
      String original_title,
      String overview,
      String poster_path,
      String release_date,
      String title,
      double vote_average});
}

/// @nodoc
class _$DataListMovieCopyWithImpl<$Res, $Val extends DataListMovie>
    implements $DataListMovieCopyWith<$Res> {
  _$DataListMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop_path = null,
    Object? id = null,
    Object? original_title = null,
    Object? overview = null,
    Object? poster_path = null,
    Object? release_date = null,
    Object? title = null,
    Object? vote_average = null,
  }) {
    return _then(_value.copyWith(
      backdrop_path: null == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_title: null == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote_average: null == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataListMovieCopyWith<$Res>
    implements $DataListMovieCopyWith<$Res> {
  factory _$$_DataListMovieCopyWith(
          _$_DataListMovie value, $Res Function(_$_DataListMovie) then) =
      __$$_DataListMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String backdrop_path,
      int id,
      String original_title,
      String overview,
      String poster_path,
      String release_date,
      String title,
      double vote_average});
}

/// @nodoc
class __$$_DataListMovieCopyWithImpl<$Res>
    extends _$DataListMovieCopyWithImpl<$Res, _$_DataListMovie>
    implements _$$_DataListMovieCopyWith<$Res> {
  __$$_DataListMovieCopyWithImpl(
      _$_DataListMovie _value, $Res Function(_$_DataListMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop_path = null,
    Object? id = null,
    Object? original_title = null,
    Object? overview = null,
    Object? poster_path = null,
    Object? release_date = null,
    Object? title = null,
    Object? vote_average = null,
  }) {
    return _then(_$_DataListMovie(
      backdrop_path: null == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_title: null == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: null == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      vote_average: null == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataListMovie implements _DataListMovie {
  const _$_DataListMovie(
      {required this.backdrop_path,
      required this.id,
      required this.original_title,
      required this.overview,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.vote_average});

  factory _$_DataListMovie.fromJson(Map<String, dynamic> json) =>
      _$$_DataListMovieFromJson(json);

  @override
  final String backdrop_path;
  @override
  final int id;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final String poster_path;
  @override
  final String release_date;
  @override
  final String title;
  @override
  final double vote_average;

  @override
  String toString() {
    return 'DataListMovie(backdrop_path: $backdrop_path, id: $id, original_title: $original_title, overview: $overview, poster_path: $poster_path, release_date: $release_date, title: $title, vote_average: $vote_average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataListMovie &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backdrop_path, id,
      original_title, overview, poster_path, release_date, title, vote_average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataListMovieCopyWith<_$_DataListMovie> get copyWith =>
      __$$_DataListMovieCopyWithImpl<_$_DataListMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataListMovieToJson(
      this,
    );
  }
}

abstract class _DataListMovie implements DataListMovie {
  const factory _DataListMovie(
      {required final String backdrop_path,
      required final int id,
      required final String original_title,
      required final String overview,
      required final String poster_path,
      required final String release_date,
      required final String title,
      required final double vote_average}) = _$_DataListMovie;

  factory _DataListMovie.fromJson(Map<String, dynamic> json) =
      _$_DataListMovie.fromJson;

  @override
  String get backdrop_path;
  @override
  int get id;
  @override
  String get original_title;
  @override
  String get overview;
  @override
  String get poster_path;
  @override
  String get release_date;
  @override
  String get title;
  @override
  double get vote_average;
  @override
  @JsonKey(ignore: true)
  _$$_DataListMovieCopyWith<_$_DataListMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
