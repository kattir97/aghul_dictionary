import 'package:isar/isar.dart';

part 'isar_entry.g.dart';

@collection
class IsarEntry {
  Id? id;
  @Index(unique: true, replace: true)
  String? wordId;
  String? word;

  List<String>? definitions;
}
