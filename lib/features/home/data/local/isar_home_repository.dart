import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/isar_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class IsarHomeRepository {
  Future<void> saveWords(List<Word> words);
  Stream<List<Word>> getWords();
}

class IsarHomeRepositoryImpl implements IsarHomeRepository {
  final isarService = IsarService();

  @override
  Future<void> saveWords(List<Word> words) async {
    await isarService.saveWords(words);
  }

  @override
  Stream<List<Word>> getWords() {
    return isarService.getWords();
  }
}

final isarHomeProvider = Provider<IsarHomeRepository>((ref) {
  return IsarHomeRepositoryImpl();
});
