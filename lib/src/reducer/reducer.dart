import 'package:movie_api/src/actions/actions.dart';
import 'package:movie_api/src/models/app_state.dart';
import 'package:redux/redux.dart';

Reducer<AppState> reducer = combineReducers<AppState>(
  <Reducer<AppState>>[
    TypedReducer<AppState, SetMovies>(_setMovies),
  ],
);

AppState _setMovies(AppState state, SetMovies action) {
  return state.rebuild((AppStateBuilder b) {
    b.movies.addAll(action.movies);
  });
}
