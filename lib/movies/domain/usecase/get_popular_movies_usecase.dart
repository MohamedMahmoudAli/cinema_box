import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';

class GetPopularMoviesUsecase {
  final BaseMovieRepository repository;
  GetPopularMoviesUsecase(this.repository);

  Future<List<Movie>> execute() => repository.getPopularMovies();
}