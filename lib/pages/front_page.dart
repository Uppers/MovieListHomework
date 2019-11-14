import 'package:flutter/material.dart';
import 'package:movie_api/movie_requests.dart';
import 'dart:convert';
import 'package:movie_api/components/movie_information.dart';
import 'package:movie_api/components/clickable_film_choice.dart';
import 'package:movie_api/pages/film_page.dart';
import 'package:movie_api/pages/list_page.dart';

class FrontPage extends StatefulWidget {
  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List movieData;
  String pageTitle;
  int tileClicked;

  @override
  void initState() {
    createMovieData();
    pageTitle = 'Choose a Film';
    super.initState();
  }

  void createMovieData() async {
    String md = await MovieAPIData().requestMovieAPIData();
    movieData = jsonDecode(md)['data']['movies'];
  }

  void setMovieState(int index) {
    setState(() {
      tileClicked = index;
    });
  }

  List<Widget> filmTiles() {
    List<Widget> ft = [];

    movieData
        .map((movie) => MovieInformation(movie))
        .toList()
        .asMap()
        .forEach((index, info) => ft.add(ClickableFilmChoice(
              sanitisedInfo: info,
              movieIndex: index,
              onTouch: setMovieState,
            )));

    return ft;
  }

  @override
  Widget build(BuildContext context) {
    if (tileClicked == null) {
      return ListPage(
        pageTitle: pageTitle,
        filmTiles: filmTiles,
      );
    } else {
      return FilmPage(
        movieData: movieData,
        tileClicked: tileClicked,
        onTouch: setMovieState,
      );
    }
  }
}
