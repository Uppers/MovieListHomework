import 'package:http/http.dart';

class MovieApi {
  Future<String> requestMovieApiData() async {
    final Response r = await get('https://yts.lt/api/v2/list_movies.json');
    final String body = r.body;
    return body;
  }
}
