import 'package:cinema_box/movies/data/model/movies_model.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future <List<MoviesModel>> getPopularMovies();
  Future <List<MoviesModel>> getTopRatedMovies();

}
class MovieRemoteDataSource extends BaseMovieRemoteDataSource{
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() {
    // TODO: implement getNowPlayingMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }
 
  
  }