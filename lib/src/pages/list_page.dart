import 'package:flutter/material.dart';
import 'package:movie_api/src/components/clickable_film_choice.dart';
import 'package:movie_api/src/container/movie_container.dart';
import 'package:movie_api/src/models/movie.dart';
import 'package:movie_api/src/pages/film_page.dart';
import 'package:built_collection/built_collection.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose a Film'),
      ),
      body: MovieContainer(
        builder: (BuildContext context, BuiltList<Movie> movies) {
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int i) {
              final Movie movie = movies[i];
              return ClickableFilmChoice(
                onTouch: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => FilmPage(
                        movie: movie,
                      ),
                      fullscreenDialog: true,
                    ),
                  );
                },
                sanitisedInfo: movie,
              );
            },
          );
        },
      ),
    );
  }
}
