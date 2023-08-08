import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class HomeRepository {
  Stream<QuerySnapshot<Map<String, dynamic>>> getEntries();
}

class HomeRepositoryImpl implements HomeRepository {
  @override
  Stream<QuerySnapshot<Map<String, dynamic>>> getEntries() {
    return FirebaseFirestore.instance.collection('words').snapshots();
  }
}

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepositoryImpl();
});
