import 'package:aghul_dictionary/features/word/data/remote/word_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordUploadNotifier extends StateNotifier<bool> {
  WordUploadNotifier({required this.repository}) : super(false);
  final WordRepository repository;

  set isLoading(bool value) => state = value;

  Future<bool> uploadWord(Word word) async {
    try {
      state = true;
      // await Future.delayed(const Duration(seconds: 15));
      await repository.createWord(word);
      return true;
    } catch (e) {
      return false;
    } finally {
      state = false;
    }
  }

  Future<bool> updatedWord(Word word, String wordId) async {
    try {
      state = true;
      // await Future.delayed(const Duration(seconds: 15));
      await repository.updateWord(word, wordId);
      return true;
    } catch (e) {
      return false;
    } finally {
      state = false;
    }
  }
}

final wordUploadProvider =
    StateNotifierProvider<WordUploadNotifier, bool>((ref) {
  final repoistory = ref.watch(wordRepositoryProvider);
  return WordUploadNotifier(repository: repoistory);
});
