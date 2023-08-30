import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/models/isar_entry.dart';
import 'package:aghul_dictionary/isar/models/isar_word.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDb();
  }

  Future<void> saveWords(List<Word> wordList) async {
    final isar = await db;
    final wordData = wordList.map((w) {
      final word = IsarWord()
        ..wordId = w.id
        ..word = w.word
        ..definitions = w.definitions
        ..ergative = w.ergative
        ..partOfSpeech = w.partOfSpeech
        ..examples = w.examples
        ..pronunciation = w.pronunciation;

      return word;
    }).toList();

    await isar.writeTxn(() async {
      await isar.isarWords.putAll(wordData);
    });
  }

  Stream<List<IsarWord>> getWords() async* {
    final isar = await db;
    yield* isar.isarWords.where().watch(fireImmediately: true);
  }

  Future<IsarWord?> getWordDetails(String wordId) async {
    final isar = await db;
    final word = await isar.isarWords.where().wordIdEqualTo(wordId).findFirst();
    return word;
  }

  Future<void> deleteWord(String wordId) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.isarWords.where().wordIdEqualTo(wordId).deleteFirst();
    });
  }

  Future<Isar> openDb() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationSupportDirectory();
      return await Isar.open([IsarEntrySchema, IsarWordSchema],
          directory: dir.path, inspector: true);
    }

    return Future.value(Isar.getInstance());
  }
}
