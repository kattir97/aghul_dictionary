import 'dart:async';

import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class HomeRepository {
  Stream<QuerySnapshot<Map<String, dynamic>>> getEntries();
  Future<List<Word>> getAllDocs();
}

class HomeRepositoryImpl implements HomeRepository {
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> getEntries() {
    return FirebaseFirestore.instance.collection('words').snapshots();
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
