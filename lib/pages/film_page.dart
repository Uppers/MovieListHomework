import 'package:flutter/material.dart';
import 'package:movie_api/components/movie_information.dart';

class FilmPage extends StatelessWidget {
  const FilmPage({
    Key key,
    @required this.movieData,
    @required this.tileClicked,
    @required this.onTouch,
  }) : super(key: key);

  final List movieData;
  final int tileClicked;
  final Function onTouch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieData
            .map((movie) => MovieInformation(movie))
            .toList()[tileClicked]
            .title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              onTouch(null);
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Text(movieData
              .map((movie) => MovieInformation(movie))
              .toList()[tileClicked]
              .description),
          Image.network(movieData
              .map((movie) => MovieInformation(movie))
              .toList()[tileClicked]
              .image)
        ],
      ),
    );
  }
}
