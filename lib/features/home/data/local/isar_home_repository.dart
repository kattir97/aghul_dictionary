import 'package:aghul_dictionary/features/home/data/remote/home_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/isar_service.dart';
import 'package:aghul_dictionary/utils/shared_prefs_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class IsarHomeRepository {
  Future<void> saveWords(List<Word> words);
  Stream<List<Word>> getWords();
  Future<bool> checkFirst();
}

class IsarHomeRepositoryImpl implements IsarHomeRepository {
  final isarService = IsarService();
  final homeRep = HomeRepositoryImpl();
  final sharedPrefs = SharedPrefsService();

  @override
  Future<void> saveWords(List<Word> words) async {
    await isarService.saveWords(words);
  }

  @override
  Stream<List<Word>> getWords() {
    return isarService.getWords();
  }

  @override
  Future<bool> checkFirst() async {
    final isFirstTime = await sharedPrefs.isFirstTime();

    if (isFirstTime) {
      final allWords = await homeRep.getAllDocs();
      await isarService.saveWords(allWords);
      await sharedPrefs.setFirstTime(false);
      return true;
    } else {
      return false;
    }
  }
}

final isarHomeProvider = Provider<IsarHomeRepository>((ref) {
  return IsarHomeRepositoryImpl();
});
