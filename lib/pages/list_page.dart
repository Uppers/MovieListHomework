import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_api/components/clickable_film_choice.dart';
import 'package:movie_api/models/movie.dart';
import 'package:movie_api/pages/film_page.dart';

import '../movie_requests.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<Movie> movies = <Movie>[];
  String pageTitle;

  @override
  void initState() {
    createMovieData();
    pageTitle = 'Choose a Film';
    super.initState();
  }

  Future<void> createMovieData() async {
    final String md = await MovieAPIData().requestMovieAPIData();
    setState(() {
      final List<Movie> data =
          List<Map<String, dynamic>>.from(jsonDecode(md)['data']['movies'])
              .map<Movie>((Map<String, dynamic> json) => Movie.fromJson(json))
              .toList();
      print(data);
      movies.addAll(data);
    });
  }

  void setMovieState(int index) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => FilmPage(
          movie: movies[index],
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
