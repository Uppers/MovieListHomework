library movie;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:movie_api/models/serializers.dart';

part 'movie.g.dart';

abstract class Movie implements Built<Movie, MovieBuilder> {
  factory Movie([void Function(MovieBuilder b) updates]) = _$Movie;

  factory Movie.fromJson(Map<dynamic, dynamic> json) =>
      serializers.deserializeWith(serializer, json);

  Movie._();

  int get id;

  String get title;

  int get year;

  double get rating;

  @nullable
  int get runtime;

  @BuiltValueField(wireName: 'description_full')
  String get description;

  @BuiltValueField(wireName: 'medium_cover_image')
  String get mediumCoverImage;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);
  static Serializer<Movie> get serializer => _$movieSerializer;
}
