import 'package:aghul_dictionary/features/word/domain/word.dart';

import 'package:aghul_dictionary/utils/fast_hash.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDb();
  }

  Future<void> saveWords(List<Word> wordList) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.words.putAll(wordList);
    });
  }

  Future<List<Word>> getAllDocs() async {
    final isar = await db;
    final words = isar.words.where().findAll();
    return words;
  }

  Stream<List<Word>> getWords() async* {
    final isar = await db;
    yield* isar.words.where().watch(fireImmediately: true);
  }

  Future<Word?> getWordDetails(String wordId) async {
    final isar = await db;
    final isarId = fastHash(wordId);
    final word = await isar.words.get(isarId);
    return word;
  }

  Future<void> deleteWord(String wordId) async {
    final isar = await db;
    final isarId = fastHash(wordId);
    await isar.writeTxn(() async {
      await isar.words.delete(isarId);
    });
  }

  Future<List<Word>> findWords(String searchTerm) async {
    final isar = await db;
    final result = isar.words
        .filter()
        .wordContains(searchTerm, caseSensitive: false)
        .or()
        .definitionsElementContains(searchTerm, caseSensitive: false)
        .findAll();

    return await result;
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationSupportDirectory();
      return await Isar.open([WordSchema],
          directory: dir.path, inspector: true);
    }

    return Future.value(Isar.getInstance());
  }
}
