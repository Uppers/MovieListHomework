import 'package:flutter/material.dart';
import 'package:movie_api/src/actions/actions.dart';
import 'package:movie_api/src/middleware/app_middleware.dart';
import 'package:movie_api/src/models/app_state.dart';
import 'package:movie_api/src/pages/list_page.dart';
import 'package:movie_api/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() {
  final AppState state = AppState.initialState();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: state,
    middleware: AppMiddleware().middleware,
  );
  store.dispatch(const GetMovies());
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key key, @required this.store}) : super(key: key);
  final Store<AppState> store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'MOVIE LISTER',
        home: ListPage(),
      ),
    );
  }
}

//class MovieState extends InheritedWidget {
//  const MovieState({Key key, @required Widget child, this.movies})
//      : assert(child != null),
//        super(key: key, child: child);
//
//  static MovieState of(BuildContext context) {
//    return context.dependOnInheritedWidgetOfExactType<MovieState>();
//  }
//
//  final List<Movie> movies;
//
//  @override
//  bool updateShouldNotify(MovieState old) {
//    return movies != old.movies;
//  }
//}
