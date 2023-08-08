import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class WordDetailsRepository {
  Future<Word> getWordData(String wordId);
  Future<void> deleteWord(String wordId);
}

class WordDetailsRepositoryImpl implements WordDetailsRepository {
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
  }
}

final wordDetailsProvider = Provider<WordDetailsRepository>((ref) {
  return WordDetailsRepositoryImpl();
});
