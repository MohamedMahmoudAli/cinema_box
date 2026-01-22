import 'package:cinema_box/core/error/failure.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetPopularMoviesUsecase {
  final BaseMovieRepository repository;
  GetPopularMoviesUsecase(this.repository);

  Future<Either<Failure, List<Movie>>> execute() async=>  await repository.getPopularMovies();
}