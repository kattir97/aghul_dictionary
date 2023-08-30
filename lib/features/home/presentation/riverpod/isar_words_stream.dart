import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/all_entries_stream.dart';
import 'package:aghul_dictionary/isar/models/isar_word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// final isarWordsStream =
//     StreamProvider.autoDispose.family<List<IsarWord>, List<Word>>((ref, list) {
//   final stremRep = ref.read(isarHomeProvider);
//   final firestream = ref.watch(allEntriesStream);
//   if (firestream.isReloading) {
//     stremRep.saveWords(list);
//   }
//   return stremRep.getWords();
// });

final isarWordsStream = StreamProvider.autoDispose<List<IsarWord>>((ref) {
  final stremRep = ref.read(isarHomeProvider);
  // final firestream = ref.watch(allEntriesStream);
  // if (firestream.isReloading) {
  //   stremRep.saveWords(list);
  // }
  return stremRep.getWords();
});
