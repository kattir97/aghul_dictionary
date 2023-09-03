import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/isar_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class IsarWordDetailsRepository {
  Future<Word?> getWord(String wordId);
  Future<void> deleteWord(String wordId);
}

class IsarWordDetailsRepositoryImpl implements IsarWordDetailsRepository {
  final service = IsarService();

  @override
  Future<Word?> getWord(String wordId) async {
    return await service.getWordDetails(wordId);
  }

  @override
  Future<void> deleteWord(String wordId) async {
    await service.deleteWord(wordId);
  }
}

final isarWordDetailsProvider = Provider<IsarWordDetailsRepository>((ref) {
  return IsarWordDetailsRepositoryImpl();
});
