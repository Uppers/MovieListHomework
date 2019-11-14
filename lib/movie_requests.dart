import 'dart:convert';

import 'package:requests/requests.dart';

class MovieAPIData {
  Future<String> requestMovieAPIData() async {
    var r = await Requests.get('https://yts.lt/api/v2/list_movies.json');
    r.raiseForStatus();
    String body = r.content();
    return body;
//    movieData = jsonDecode(body)['data']['movies'];
//    print(movieData.runtimeType);
  }
}
