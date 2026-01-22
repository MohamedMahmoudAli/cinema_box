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
        '${Constants.baseUrl}movie/now_playing?api_key=${Constants.apiKey}',
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
        '${Constants.baseUrl}movie/popular?api_key=${Constants.apiKey}',
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
      final Response = await Dio().get(
        '${Constants.baseUrl}movie/top_rated?api_key=${Constants.apiKey}',
      );
      if (Response.statusCode == 200) {
        return List<MoviesModel>.from(
          Response.data['results'].map((e) => MoviesModel.fromJson(e)),
        );
      } else {
        throw Exception(Response.statusMessage);
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
