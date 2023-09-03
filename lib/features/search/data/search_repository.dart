import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/isar_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class SearchRepository {
  Future<List<Word>> findWords(String searchTerm);
}

class SearchRepositoryImpl implements SearchRepository {
  final service = IsarService();
  @override
  Future<List<Word>> findWords(String searchTerm) async {
    return await service.findWords(searchTerm);
  }
}

final searchRepProvider = Provider<SearchRepository>((ref) {
  return SearchRepositoryImpl();
});
