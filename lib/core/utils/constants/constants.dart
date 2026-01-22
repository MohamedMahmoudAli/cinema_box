class Constants {
  static String baseUrl = 'https://api.themoviedb.org/3';
  static String apiKey = '91e6af4a16434ac9244cb5b23071c2fe';

  static  String nowPlayingMoviesPath="$baseUrl/movie/now_playing?api_key=$apiKey";
  static  String popularMoviesPath="$baseUrl/movie/popular?api_key=$apiKey";
  static  String topRatedMoviesPath="$baseUrl/movie/top_rated?api_key=$apiKey";

}