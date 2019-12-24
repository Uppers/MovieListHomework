library app_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_api/src/models/serializers.dart';

import 'movie.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;

  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b..movies = ListBuilder<Movie>();
    });
  }

  factory AppState.fromJson(Map<dynamic, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  AppState._();

  BuiltList<Movie> get movies;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
