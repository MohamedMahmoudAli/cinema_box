import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';

class GetTopRatedMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUsecase(this.baseMovieRepository);

  Future<List<Movie>> execute() => baseMovieRepository.getTopRatedMovies();
}