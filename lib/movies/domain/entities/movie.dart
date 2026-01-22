import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String backdropPath;
  final List<int> genreIds;
  final String title;
  final String overView;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.backdropPath,
    required this.genreIds,
    required this.title,
    required this.overView,
    required this.voteAverage, required this.releaseDate,
  });
        @override
       
        List<Object?> get props => [
          id,
          backdropPath,
          genreIds,
          title,
          overView,
          voteAverage,
          releaseDate
        ];
}

