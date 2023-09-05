import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/movie_item.dart';
import 'package:movie_app/core/resources/injector/injection_container.dart';
import 'package:movie_app/features/list_movie/domain/entity/list_movie_entity.dart';
import 'package:movie_app/features/list_movie/presentation/bloc/list_movie_bloc.dart';

class ListPage extends StatefulWidget {

  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  @override
  void initState() {
    sl<ListMovieBloc>().add(const DataMovieEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ListMovieBloc, ListMovieState>(
        builder: (BuildContext context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text("List Movie"),
            ),
            body: ((state.listMovieEntity?.results.isEmpty ?? false) || state.isloading)
              ? Container(
                  child: Text("Tidak ada data"),
                )
              : Container(
                child: ListView.builder(
                  itemCount: state.listMovieEntity?.results.length ?? 0,
                  itemBuilder: (BuildContext ctx, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: MovieItem(movie: state.listMovieEntity?.results[index] ?? DataListMovie(
                          backdrop_path: '',
                          id: 0,
                          original_title: '',
                          overview: '',
                          poster_path: '',
                          release_date: '',
                          title: '',
                          vote_average: 0.0
                      )),
                    );
                  }
                ),
              ),
          );
        },
        listener: (context, state) {}
    );
  }
}