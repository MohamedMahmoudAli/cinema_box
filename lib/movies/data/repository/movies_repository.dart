import 'package:cinema_box/core/error/exceptions.dart';
import 'package:cinema_box/core/error/failure.dart';
import 'package:cinema_box/movies/data/datasource/movie_reomte_data_source.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MoviesRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final movieResponse = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(movieResponse);
    } on ServerExceptions catch (e) {
      return Left(ServerFailure(e.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    try {
      final movieResponse = await baseMovieRemoteDataSource.getPopularMovies();
      return Right(movieResponse);
    } on ServerExceptions catch (e) {
      return Left(ServerFailure(e.errorModel.message));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    try {
      final movieResponse = await baseMovieRemoteDataSource.getTopRatedMovies();
      return Right(movieResponse);
    } on ServerExceptions catch (e) {
      return Left(ServerFailure(e.errorModel.message));
    }
  }
}
