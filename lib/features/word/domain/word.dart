import 'package:aghul_dictionary/utils/fast_hash.dart';
import 'package:aghul_dictionary/utils/server_timestamp_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
@Collection(ignore: {'copyWith'})
class Word with _$Word {
  const Word._();
  const factory Word({
    required String word,
    required List<String> definitions,
    required String partOfSpeech,
    String? id,
    String? ergative,
    List<String>? examples,
    String? pronunciation,
    @ServerTimestampConverter() DateTime? createdAt,
  }) = _Word;

  Id get isarId => fastHash(id!);

  factory Word.fromJson(Map<String, Object?> json) => _$WordFromJson(json);
}
