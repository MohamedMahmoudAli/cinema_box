import 'package:cinema_box/core/error/failure.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:dartz/dartz.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>>getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}