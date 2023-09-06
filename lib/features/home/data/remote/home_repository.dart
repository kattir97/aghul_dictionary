import 'dart:async';

import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class HomeRepository {
  Stream<List<Word>> getEntries();
  Future<List<Word>> getAllDocs();
}

class HomeRepositoryImpl implements HomeRepository {
  @override
  Stream<List<Word>> getEntries() {
    return FirebaseFirestore.instance
        .collection('words')
        .snapshots()
        .map((snapshot) {
      final List<DocumentSnapshot<Map<String, dynamic>>> addedOrModifiedDocs =
          snapshot.docChanges
              .where((change) =>
                  change.type == DocumentChangeType.added ||
                  change.type == DocumentChangeType.modified)
              .map((change) => change.doc)
              .toList();

      final List<Word> modifiedOrAddedWords = addedOrModifiedDocs.map((doc) {
        final id = doc.id;
        final word =
            Word.fromJson(doc.data() as Map<String, Object?>).copyWith(id: id);
        return word;
      }).toList();

      return modifiedOrAddedWords;
    });
  }

  @override
  Future<List<Word>> getAllDocs() async {
    final data = await FirebaseFirestore.instance.collection('words').get();
    final allDocs = data.docs.map((d) {
      final id = d.id;
      final word = Word.fromJson(d.data()).copyWith(id: id);
      return word;
    }).toList();
    return allDocs;
  }
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl();
});
