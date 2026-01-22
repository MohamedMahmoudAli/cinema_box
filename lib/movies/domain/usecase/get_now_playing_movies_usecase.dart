import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';

class GetNowPlayingMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUsecase(this.baseMovieRepository);

  Future<List<Movie>> execute()async { return await baseMovieRepository.getNowPlayingMovies();}
}