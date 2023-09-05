part of 'list_movie_bloc.dart';

abstract class ListMovieEvent extends Equatable {
  const ListMovieEvent();

  @override
  List<Object?> get props => <ListMovieEvent>[];
}

class DataMovieEvent extends ListMovieEvent {
  const DataMovieEvent();

  @override
  List<Object> get props => <Object>[];
}