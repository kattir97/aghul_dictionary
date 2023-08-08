import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class WordRepository {
  Future<void> createWord(Word word);

  Future<void> updateWord(Word word, String wordId);
}

class WordRepositoryImpl implements WordRepository {
  @override
  Future<void> createWord(Word word) async {
    await FirebaseFirestore.instance.collection('words').add(word.toJson());
  }

  @override
  Future<void> updateWord(Word word, String wordId) async {
    await FirebaseFirestore.instance
        .collection('words')
        .doc(wordId)
        .update(word.toJson());
  }
}

final wordRepositoryProvider = Provider<WordRepository>((ref) {
  return WordRepositoryImpl();
});
