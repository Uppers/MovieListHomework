import 'package:movie_api/src/models/movie.dart';

class GetMovies {
  const GetMovies();
}

class SetMovies {
  const SetMovies(this.movies);

  final List<Movie> movies;
}
