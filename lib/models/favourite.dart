import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite.freezed.dart';
part 'favourite.g.dart';

@freezed
class Favourite with _$Favourite {
  const factory Favourite({
    required int id,
    required int userId,
    required int movieId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Favourite;

  factory Favourite.fromJson(Map<String, dynamic> json) =>
      _$FavouriteFromJson(json);
}
