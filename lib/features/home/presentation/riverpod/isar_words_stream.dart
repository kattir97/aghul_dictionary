import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isarWordsStream = StreamProvider.autoDispose<List<Word>>((ref) {
  final stremRep = ref.read(isarHomeProvider);
  // final firestream = ref.watch(allEntriesStream);
  // if (firestream.isReloading) {
  //   stremRep.saveWords(list);
  // }
  return stremRep.getWords();
});
