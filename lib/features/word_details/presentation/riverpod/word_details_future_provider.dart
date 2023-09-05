import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/data/remote/word_details_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final wordDetailsFutureProvider =
    FutureProvider.family.autoDispose<Word, String>((ref, wordId) async {
  final detailsProvider = ref.read(wordDetailsProvider);
  final word = await detailsProvider.getWordData(wordId);
  return word;
});
