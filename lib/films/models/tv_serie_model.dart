import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_watch_like/films/models/season_model.dart';
import './genre_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'tv_serie_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'tv_serie_model.g.dart';

@freezed
class Serie with _$Serie {
  const factory Serie({
    required String id,
    required String name,
    required String overview,
    required String status,
    required List<Genre> genres,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
    
    @JsonKey(name: 'episode_run_time') required String episodeRunTime,
    required List<Season> seasons,
    @JsonKey(name: 'vote_average') required String voteAverage,
  }) = _Serie;

  // optional: Since our Person class is serializable, we must add this line.
  // But if Person was not serializable, we could skip it.
  factory Serie.fromJson(Map<String, dynamic> json) => _$SerieFromJson(json);
}
