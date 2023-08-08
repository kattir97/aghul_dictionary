import 'dart:async';
import 'dart:math';

import 'package:aghul_dictionary/features/home/data/remote/home_repository.dart';
import 'package:aghul_dictionary/features/home/domain/entry.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final allEntriesStream = StreamProvider.autoDispose<Iterable<Entry>>(
  (ref) {
    final homeRep = ref.watch(homeRepositoryProvider);
    final controller = StreamController<Iterable<Entry>>();

    final sub = homeRep.getEntries().listen(
      (snapshots) {
        final entries = snapshots.docs.map((e) {
          final id = e.id;
          print(id);
          final entry = Entry.fromJson(e.data()).copyWith(wordId: id);
          print('++++++++ENTRY++++++++: $entry');
          return entry;
        });
        controller.sink.add(entries);
      },
    );

    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });

    return controller.stream;
  },
);
