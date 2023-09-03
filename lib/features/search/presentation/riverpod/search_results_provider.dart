import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../word/domain/word.dart';

final searchResultsProvider = StateProvider<List<Word>>((ref) {
  return [];
});
