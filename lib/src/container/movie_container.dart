import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter/material.dart';
import 'package:movie_api/src/models/app_state.dart';
import 'package:movie_api/src/models/movie.dart';
import 'package:built_collection/built_collection.dart';
import 'package:redux/src/store.dart';

class MovieContainer extends StatelessWidget {

  const MovieContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<BuiltList<Movie>> builder;


  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BuiltList<Movie>>(
      converter: (Store<AppState> store) => store.state.movies,
      builder: builder,
    );
  }
}
