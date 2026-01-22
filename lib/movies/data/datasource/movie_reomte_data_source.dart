import 'package:cinema_box/core/error/error_model.dart';
import 'package:cinema_box/core/error/exceptions.dart';
import 'package:cinema_box/core/utils/constants/constants.dart';
import 'package:cinema_box/movies/data/model/movies_model.dart';
import 'package:dio/dio.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    try {
      final response = await Dio().get(
        Constants.nowPlayingMoviesPath,
      );
      return List<MoviesModel>.from(
        response.data['results'].map((e) => MoviesModel.fromJson(e)),
      );
    } catch (e) {
      
      throw e.toString();
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    try {
      final response = await Dio().get(
        Constants.popularMoviesPath,
      );
      if (response.statusCode == 200) {
        return List<MoviesModel>.from(
          response.data['results'].map((e) => MoviesModel.fromJson(e)),
        );
      } else {
        throw Exception(response.statusMessage);
      }
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    try {
      final response = await Dio().get(
        Constants.topRatedMoviesPath,
      );
      if (response.statusCode == 200) {
        return List<MoviesModel>.from(
          response.data['results'].map((e) => MoviesModel.fromJson(e)),
        );
      } else {
         throw ServerExceptions(errorModel:ErrorModel.fromJson(response.data));   
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
