import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/data/local/isar_word_details_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class WordDetailsRepository {
  Future<Word> getWordData(String wordId);
  Future<void> deleteWord(String wordId);
}

class WordDetailsRepositoryImpl implements WordDetailsRepository {
  final isarRep = IsarWordDetailsRepositoryImpl();

  @override
  Future<Word> getWordData(String wordId) async {
    final doc =
        await FirebaseFirestore.instance.collection('words').doc(wordId).get();
    final data = doc.data() as Map<String, dynamic>;
    final word = Word.fromJson(data);
    return word;
  }

  @override
  Future<void> deleteWord(String wordId) async {
    await FirebaseFirestore.instance.collection('words').doc(wordId).delete();
    await isarRep.deleteWord(wordId);
  }
}

final wordDetailsProvider = Provider<WordDetailsRepository>((ref) {
  return WordDetailsRepositoryImpl();
});
