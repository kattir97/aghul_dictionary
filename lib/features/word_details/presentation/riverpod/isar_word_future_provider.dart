import 'package:aghul_dictionary/features/home/presentation/riverpod/isar_words_stream.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/data/local/isar_word_details_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isarWordFutureProvider =
    FutureProvider.family.autoDispose<Word, String>((ref, wordId) async {
  var det = ref.read(isarWordDetailsProvider);
  final strm = ref.watch(isarWordsStream);
  final wordDetails = await det.getWord(wordId);
  if (strm.isReloading) {
    det = ref.read(isarWordDetailsProvider);
  }

  return wordDetails!;
});
