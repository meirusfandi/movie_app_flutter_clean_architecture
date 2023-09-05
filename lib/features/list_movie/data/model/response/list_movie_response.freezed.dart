// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_movie_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListMovieResponse _$ListMovieResponseFromJson(Map<String, dynamic> json) {
  return _ListMovieResponse.fromJson(json);
}

/// @nodoc
mixin _$ListMovieResponse {
  int? get page => throw _privateConstructorUsedError;
  int? get total_pages => throw _privateConstructorUsedError;
  List<ListMovie>? get results => throw _privateConstructorUsedError;
  int? get total_results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMovieResponseCopyWith<ListMovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMovieResponseCopyWith<$Res> {
  factory $ListMovieResponseCopyWith(
          ListMovieResponse value, $Res Function(ListMovieResponse) then) =
      _$ListMovieResponseCopyWithImpl<$Res, ListMovieResponse>;
  @useResult
  $Res call(
      {int? page,
      int? total_pages,
      List<ListMovie>? results,
      int? total_results});
}

/// @nodoc
class _$ListMovieResponseCopyWithImpl<$Res, $Val extends ListMovieResponse>
    implements $ListMovieResponseCopyWith<$Res> {
  _$ListMovieResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? total_pages = freezed,
    Object? results = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ListMovie>?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMovieResponseCopyWith<$Res>
    implements $ListMovieResponseCopyWith<$Res> {
  factory _$$_ListMovieResponseCopyWith(_$_ListMovieResponse value,
          $Res Function(_$_ListMovieResponse) then) =
      __$$_ListMovieResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? page,
      int? total_pages,
      List<ListMovie>? results,
      int? total_results});
}

/// @nodoc
class __$$_ListMovieResponseCopyWithImpl<$Res>
    extends _$ListMovieResponseCopyWithImpl<$Res, _$_ListMovieResponse>
    implements _$$_ListMovieResponseCopyWith<$Res> {
  __$$_ListMovieResponseCopyWithImpl(
      _$_ListMovieResponse _value, $Res Function(_$_ListMovieResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? total_pages = freezed,
    Object? results = freezed,
    Object? total_results = freezed,
  }) {
    return _then(_$_ListMovieResponse(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      total_pages: freezed == total_pages
          ? _value.total_pages
          : total_pages // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ListMovie>?,
      total_results: freezed == total_results
          ? _value.total_results
          : total_results // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMovieResponse implements _ListMovieResponse {
  const _$_ListMovieResponse(
      {this.page,
      this.total_pages,
      final List<ListMovie>? results,
      this.total_results})
      : _results = results;

  factory _$_ListMovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ListMovieResponseFromJson(json);

  @override
  final int? page;
  @override
  final int? total_pages;
  final List<ListMovie>? _results;
  @override
  List<ListMovie>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total_results;

  @override
  String toString() {
    return 'ListMovieResponse(page: $page, total_pages: $total_pages, results: $results, total_results: $total_results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMovieResponse &&
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
  _$$_ListMovieResponseCopyWith<_$_ListMovieResponse> get copyWith =>
      __$$_ListMovieResponseCopyWithImpl<_$_ListMovieResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMovieResponseToJson(
      this,
    );
  }
}

abstract class _ListMovieResponse implements ListMovieResponse {
  const factory _ListMovieResponse(
      {final int? page,
      final int? total_pages,
      final List<ListMovie>? results,
      final int? total_results}) = _$_ListMovieResponse;

  factory _ListMovieResponse.fromJson(Map<String, dynamic> json) =
      _$_ListMovieResponse.fromJson;

  @override
  int? get page;
  @override
  int? get total_pages;
  @override
  List<ListMovie>? get results;
  @override
  int? get total_results;
  @override
  @JsonKey(ignore: true)
  _$$_ListMovieResponseCopyWith<_$_ListMovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ListMovie _$ListMovieFromJson(Map<String, dynamic> json) {
  return _ListMovie.fromJson(json);
}

/// @nodoc
mixin _$ListMovie {
  String? get backdrop_path => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get original_title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get release_date => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  double? get vote_average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMovieCopyWith<ListMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMovieCopyWith<$Res> {
  factory $ListMovieCopyWith(ListMovie value, $Res Function(ListMovie) then) =
      _$ListMovieCopyWithImpl<$Res, ListMovie>;
  @useResult
  $Res call(
      {String? backdrop_path,
      int? id,
      String? original_title,
      String? overview,
      String? poster_path,
      String? release_date,
      String? title,
      double? vote_average});
}

/// @nodoc
class _$ListMovieCopyWithImpl<$Res, $Val extends ListMovie>
    implements $ListMovieCopyWith<$Res> {
  _$ListMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop_path = freezed,
    Object? id = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? vote_average = freezed,
  }) {
    return _then(_value.copyWith(
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMovieCopyWith<$Res> implements $ListMovieCopyWith<$Res> {
  factory _$$_ListMovieCopyWith(
          _$_ListMovie value, $Res Function(_$_ListMovie) then) =
      __$$_ListMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? backdrop_path,
      int? id,
      String? original_title,
      String? overview,
      String? poster_path,
      String? release_date,
      String? title,
      double? vote_average});
}

/// @nodoc
class __$$_ListMovieCopyWithImpl<$Res>
    extends _$ListMovieCopyWithImpl<$Res, _$_ListMovie>
    implements _$$_ListMovieCopyWith<$Res> {
  __$$_ListMovieCopyWithImpl(
      _$_ListMovie _value, $Res Function(_$_ListMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrop_path = freezed,
    Object? id = freezed,
    Object? original_title = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? release_date = freezed,
    Object? title = freezed,
    Object? vote_average = freezed,
  }) {
    return _then(_$_ListMovie(
      backdrop_path: freezed == backdrop_path
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      original_title: freezed == original_title
          ? _value.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      poster_path: freezed == poster_path
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      release_date: freezed == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      vote_average: freezed == vote_average
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMovie implements _ListMovie {
  const _$_ListMovie(
      {this.backdrop_path,
      this.id,
      this.original_title,
      this.overview,
      this.poster_path,
      this.release_date,
      this.title,
      this.vote_average});

  factory _$_ListMovie.fromJson(Map<String, dynamic> json) =>
      _$$_ListMovieFromJson(json);

  @override
  final String? backdrop_path;
  @override
  final int? id;
  @override
  final String? original_title;
  @override
  final String? overview;
  @override
  final String? poster_path;
  @override
  final String? release_date;
  @override
  final String? title;
  @override
  final double? vote_average;

  @override
  String toString() {
    return 'ListMovie(backdrop_path: $backdrop_path, id: $id, original_title: $original_title, overview: $overview, poster_path: $poster_path, release_date: $release_date, title: $title, vote_average: $vote_average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMovie &&
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
  _$$_ListMovieCopyWith<_$_ListMovie> get copyWith =>
      __$$_ListMovieCopyWithImpl<_$_ListMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMovieToJson(
      this,
    );
  }
}

abstract class _ListMovie implements ListMovie {
  const factory _ListMovie(
      {final String? backdrop_path,
      final int? id,
      final String? original_title,
      final String? overview,
      final String? poster_path,
      final String? release_date,
      final String? title,
      final double? vote_average}) = _$_ListMovie;

  factory _ListMovie.fromJson(Map<String, dynamic> json) =
      _$_ListMovie.fromJson;

  @override
  String? get backdrop_path;
  @override
  int? get id;
  @override
  String? get original_title;
  @override
  String? get overview;
  @override
  String? get poster_path;
  @override
  String? get release_date;
  @override
  String? get title;
  @override
  double? get vote_average;
  @override
  @JsonKey(ignore: true)
  _$$_ListMovieCopyWith<_$_ListMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
