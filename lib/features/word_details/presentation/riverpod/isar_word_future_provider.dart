import 'package:aghul_dictionary/features/home/presentation/riverpod/isar_words_stream.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/data/local/isar_word_details_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isarWordFutureProvider =
    FutureProvider.family.autoDispose<Word, String>((ref, wordId) async {
  var det = ref.read(isarWordDetailsProvider);
  final strm = ref.watch(isarWordsStream);
  final wordDetails = await det.getWord(wordId);
  print('ISARWORD =========$wordDetails=============');
  if (strm.isReloading) {
    det = ref.read(isarWordDetailsProvider);
  }

  final word = Word(
    word: wordDetails?.word ?? '',
    definitions: wordDetails?.definitions ?? [],
    partOfSpeech: wordDetails?.partOfSpeech ?? '',
    ergative: wordDetails?.ergative ?? '',
    examples: wordDetails?.examples ?? [],
    pronunciation: wordDetails?.pronunciation,
  );

  return word;
});
