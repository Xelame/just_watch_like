import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_watch_like/models/season.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'tv_serie.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'tv_serie.g.dart';

@freezed
class Serie with _$Serie {
  const factory Serie({
    required String status,
    required List<Genre> genres,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    @JsonKey(name: 'poster_path') required String posterPath,
    required String id,
    required String name,
    required String overview,
    @JsonKey(name: 'episode_run_time') String episodeRunTime,
    required List<Season> seasons,
    @JsonKey(name: 'vote_average') required String voteAverage,
  }) = _Serie;

  // optional: Since our Person class is serializable, we must add this line.
  // But if Person was not serializable, we could skip it.
  factory Serie.fromJson(Map<String, dynamic> json) => _$SerieFromJson(json);
}
