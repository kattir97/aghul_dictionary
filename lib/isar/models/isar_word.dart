import 'package:isar/isar.dart';

part 'isar_word.g.dart';

@collection
class IsarWord {
  Id? id;
  @Index(unique: true, replace: true)
  String? wordId;
  String? word;
  List<String>? definitions;
  String? partOfSpeech;
  String? ergative;
  List<String>? examples;
  String? pronunciation;
}
