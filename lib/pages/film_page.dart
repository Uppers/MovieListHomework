import 'package:flutter/material.dart';
import 'package:movie_api/models/movie.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: ListView(
        children: <Widget>[
          Text(movie.description),
          Image.network(movie.mediumCoverImage)
        ],
      ),
    );
  }
}
