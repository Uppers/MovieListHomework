class MovieInformation {
  String id;
  String title;
  String released;
  String rating;
  String length;
  String description;
  String genres;
  String image;
  MovieInformation(Map movie) {
    movie['id'] != null ? id = movie['id'].toString() : id = '';
    movie['title'] != null ? title = movie['title'] : title = '';
    movie['year'] != null ? released = movie['year'].toString() : released = '';
    movie['rating'] != null ? rating = movie['rating'].toString() : rating = '';
    movie['length'] != null ? length = movie['length'].toString() : length = '';
    movie['description_full'] != null
        ? description = movie['description_full']
        : description = '';
    movie['genres'] != null
        ? genres = movie['genres'].reduce((a, b) => '$a/ $b')
        : genres = '';
    movie['medium_cover_image'] != null
        ? image = movie['medium_cover_image']
        : image = '';
  }
}
