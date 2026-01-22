import 'package:cinema_box/movies/data/datasource/movie_reomte_data_source.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';

class MoviesRepository extends BaseMovieRepository {
  final MovieRemoteDataSource movieRemoteDataSource;

  MoviesRepository(this.movieRemoteDataSource);
  @override
  Future<List<Movie>> getNowPlayingMovies() {
    try{
     final movieResponse= movieRemoteDataSource.getNowPlayingMovies();
     return movieResponse;
    }catch(e){
      throw e.toString();
    }

    
  }

  @override
  Future<List<Movie>> getPopularMovies() {
    try{
     final movieResponse= movieRemoteDataSource.getPopularMovies();
     return movieResponse;
    }catch(e){
      throw e.toString();
    }
  }

  @override
  Future<List<Movie>> getTopRatedMovies() {
    try{
     final movieResponse= movieRemoteDataSource.getTopRatedMovies();
     return movieResponse;
    }catch(e){
      throw e.toString();
    }
  }
}