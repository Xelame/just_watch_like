import 'package:freezed_annotation/freezed_annotation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'season.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'season.g.dart';

@freezed
class Season with _$Season {
  const factory Season({
    required String episodeCount,
    required String id,
    required String name,
    required String posterPath,
    required String seasonNumber,
  }) = _Season;

  // optional: Since our Person class is serializable, we must add this line.
  // But if Person was not serializable, we could skip it.
  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
