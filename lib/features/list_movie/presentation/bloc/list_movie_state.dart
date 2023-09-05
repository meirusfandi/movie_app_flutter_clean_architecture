part of 'list_movie_bloc.dart';

class ListMovieState extends Equatable {
  final ListMovieEntity? listMovieEntity;
  final String errorMessage;
  final bool isloading;

  const ListMovieState({
    this.listMovieEntity,
    this.errorMessage = '',
    this.isloading = false
  });

  const ListMovieState.noValue()
      : listMovieEntity = null,
        isloading = true,
        errorMessage = '';

  ListMovieState copyWith({
    ListMovieEntity? listMovieEntity,
    bool? isloading,
    String? errorMessage
  }) {
    return ListMovieState(
        listMovieEntity: listMovieEntity ?? this.listMovieEntity,
        isloading: isloading ?? this.isloading,
        errorMessage: errorMessage ?? this.errorMessage
    );
  }

  @override
  List<Object?> get props => <Object>[
    isloading,
    listMovieEntity ?? const ListMovieEntity(
      page: 0,
      total_pages: 0,
      total_results: 0,
      results: [],
    ),
    errorMessage
  ];
}
