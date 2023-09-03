import 'package:aghul_dictionary/features/search/data/search_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchWordProvider =
    FutureProvider.family<List<Word>, String>((ref, searchTerm) async {
  final searchRep = ref.read(searchRepProvider);
  return await searchRep.findWords(searchTerm);
});
