import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/data/local/isar_word_details_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isarWordFutureProvider =
    FutureProvider.family.autoDispose<Word, String>((ref, wordId) async {
  final isarProv = ref.read(isarWordDetailsProvider);
  final wordDetails = await isarProv.getWord(wordId);

  return wordDetails!;
});
