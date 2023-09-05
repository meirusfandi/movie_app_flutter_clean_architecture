import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/movie_item.dart';
import 'package:movie_app/core/resources/injector/injection_container.dart';
import 'package:movie_app/features/list_movie/domain/entity/list_movie_entity.dart';
import 'package:movie_app/features/list_movie/presentation/bloc/list_movie_bloc.dart';
import 'package:movie_app/utils/utils.dart';

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
              ? (state.isloading)
                ? ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xFFEAEAEA), borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.all(6),
                      ).loadShimmer();
                    },
                  )
                : Center(
                  child: Container(
                    child: Text("Tidak ada data"),
                  ),
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