import 'package:cinema_box/core/error/failure.dart';
import 'package:cinema_box/movies/domain/entities/Movie.dart';
import 'package:cinema_box/movies/domain/repository/base_movie_repository.dart';
import 'package:dartz/dartz.dart';

class GetNowPlayingMoviesUsecase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUsecase(this.baseMovieRepository);

  Future<Either < Failure,List<Movie>>> execute()async { return await baseMovieRepository.getNowPlayingMovies();}
}