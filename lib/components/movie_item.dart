import 'package:flutter/material.dart';
import 'package:movie_app/features/list_movie/domain/entity/list_movie_entity.dart';
import 'package:movie_app/utils/constants.dart';

class MovieItem extends StatelessWidget {
  final DataListMovie movie;

  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4.0),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        color: Colors.grey[200]
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network("$imgServer/${movie.poster_path}", height: 80, width: 60),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(movie.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), maxLines: 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(movie.overview, overflow: TextOverflow.ellipsis, maxLines: 2),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
