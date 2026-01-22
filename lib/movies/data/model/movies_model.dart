import 'package:cinema_box/movies/domain/entities/Movie.dart';

class MoviesModel extends Movie {
   const MoviesModel({required super.id, required super.backdropPath, required super.genreIds, required super.title, required super.overView, required super.voteAverage, required super.releaseDate});

factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
    id: json["id"],
    backdropPath: json["backdrop_path"],
    genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
    title: json["title"],
    overView: json["overview"],
    voteAverage: json["vote_average"].toDouble(),
    releaseDate: json["release_date"],
  );
}