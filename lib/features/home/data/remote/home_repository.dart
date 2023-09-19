import 'dart:async';

import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/isar/isar_service.dart';
import 'package:aghul_dictionary/utils/shared_prefs_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class HomeRepository {
  Future<List<Word>> getEntries();
  Future<List<Word>> getAllDocs();
}

class HomeRepositoryImpl implements HomeRepository {
  final sharedPrefs = SharedPrefsService();
  final isarService = IsarService();

  // @override
  // Stream<List<Word>> getEntries() async* {
  //   DateTime lastTimestamp = await sharedPrefs.getLastTimestamp();
  //   print('LASTTIMESTAMP=====================: $lastTimestamp');
  // Query query = FirebaseFirestore.instance
  //     .collection('words')
  //     .where('createdAt', isGreaterThan: Timestamp.fromDate(lastTimestamp));

  //   try {
  //     // Start listening to the query snapshots only once.
  //     Stream<QuerySnapshot> snapshots = query.snapshots();

  //     // This await for loop will keep listening to the stream indefinitely.
  //     await for (QuerySnapshot snapshot in snapshots) {
  //       final List<DocumentSnapshot<Object?>> addedOrModifiedDocs =
  //           snapshot.docs;

  //       print('ADDEDORMODIFIED $addedOrModifiedDocs');

  //       final List<Word> modifiedOrAddedWords = addedOrModifiedDocs.map((doc) {
  //         final id = doc.id;
  //         final word = Word.fromJson(doc.data() as Map<String, Object?>)
  //             .copyWith(id: id);
  //         return word;
  //       }).toList();

  //       if (modifiedOrAddedWords.isNotEmpty) {
  //         DateTime latestTimestamp = modifiedOrAddedWords.last.createdAt!;
  //         await sharedPrefs.setLastTimestamp(latestTimestamp);
  //         yield modifiedOrAddedWords;
  //       }
  //     }
  //   } catch (e, stackTrace) {
  //     // Handle any errors that may occur during stream processing.
  //     print('Error: $e');
  //   }
  // }

  @override
  Future<List<Word>> getEntries() async {
    DateTime lastTimestamp = await sharedPrefs.getLastTimestamp();
    Query query = FirebaseFirestore.instance
        .collection('words')
        .where('createdAt', isGreaterThan: Timestamp.fromDate(lastTimestamp));

    try {
      QuerySnapshot snapshot = await query.get();

      final addedOrUpdatedWords = snapshot.docs.map((doc) {
        final id = doc.id;
        final word =
            Word.fromJson(doc.data() as Map<String, Object?>).copyWith(id: id);
        return word;
      }).toList();

      await isarService.saveWords(addedOrUpdatedWords);
      DateTime latestTimestamp = addedOrUpdatedWords.last.createdAt!;
      await sharedPrefs.setLastTimestamp(latestTimestamp);

      return addedOrUpdatedWords;
    } catch (e) {
      print('Error: $e');
      return [];
    }
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
