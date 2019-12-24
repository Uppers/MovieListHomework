import 'dart:convert';

import 'package:movie_api/src/actions/actions.dart';
import 'package:movie_api/src/data/movie_apis.dart';
import 'package:movie_api/src/models/app_state.dart';
import 'package:movie_api/src/models/movie.dart';
import 'package:redux/redux.dart';

class AppMiddleware {
  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetMovies>(_getMovies),
    ];
  }

  Future<void> _getMovies(
      Store<AppState> store, GetMovies action, NextDispatcher next) async {
    final MovieApi api = MovieApi();

    final String data = await api.requestMovieApiData();

    final List<Movie> movies =
        List<Map<String, dynamic>>.from(jsonDecode(data)['data']['movies'])
            .map<Movie>((Map<String, dynamic> json) => Movie.fromJson(json))
            .toList();

    store.dispatch(SetMovies(movies));
  }
}
