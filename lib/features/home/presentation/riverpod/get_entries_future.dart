import 'package:aghul_dictionary/features/home/data/remote/home_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../word/domain/word.dart';

final getEntriesFuture = FutureProvider.autoDispose<List<Word>>((ref) async {
  final homeRep = ref.read(homeRepositoryProvider);
  final addedOrUpdatedWords = await homeRep.getEntries();
  return addedOrUpdatedWords;
});
