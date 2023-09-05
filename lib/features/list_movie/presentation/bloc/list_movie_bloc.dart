import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/failure/failure.dart';
import 'package:movie_app/features/list_movie/domain/entity/list_movie_entity.dart';
import 'package:movie_app/features/list_movie/domain/usecase/do_get_list_movie.dart';

part 'list_movie_event.dart';
part 'list_movie_state.dart';

class ListMovieBloc extends Bloc<ListMovieEvent, ListMovieState> {
  final DoGetListMovie doGetListMovie;

  ListMovieBloc({required this.doGetListMovie}): super (const ListMovieState()) {
    on<DataMovieEvent>(_doGetListMovie);
  }

  Future<void> _doGetListMovie(DataMovieEvent event, Emitter<ListMovieState> emit) async {
    try {
      emit(state.copyWith(isloading: true));
      final result = await doGetListMovie();
      debugPrint("result in bloc: $result");
      result.fold((l) {
        emit(state.copyWith(isloading: false, errorMessage: (l as ListMovieFailure?)?.exception?.message ?? (l as ListMovieFailure?)?.otherException ?? ''));
      }, (r) {
        emit(state.copyWith(isloading: false, listMovieEntity: r));
      });
    } on DioError catch (e) {
      debugPrint("on dio error: $e");
      emit(state.copyWith(isloading: false, errorMessage: e.response?.data['message']));
    } catch (e) {
      debugPrint("on catch error: $e");
      emit(state.copyWith(isloading: false, errorMessage: e.toString()));
    }
  }
}