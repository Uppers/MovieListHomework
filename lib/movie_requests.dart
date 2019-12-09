import 'package:requests/requests.dart';

class MovieAPIData {
  Future<String> requestMovieAPIData() async {
    final Response r =
        await Requests.get('https://yts.lt/api/v2/list_movies.json');
    r.raiseForStatus();
    final String body = r.content();
    return body;
  }
}
