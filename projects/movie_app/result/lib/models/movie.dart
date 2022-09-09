class Movie {
  final String imdbId;
  final String poster;
  final String title;
  final String year;

  Movie({
   required this.imdbId,
   required this.title,
   required this.poster,
   required this.year,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        imdbId: json["imdbID"],
        poster: json["Poster"],
        title: json["Title"],
        year: json["Year"]);
  }
}
