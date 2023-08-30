import 'dart:async';

import 'package:aghul_dictionary/features/home/data/remote/home_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final allEntriesStream = StreamProvider.autoDispose<Iterable<Word>>(
  (ref) {
    final homeRep = ref.watch(homeRepositoryProvider);
    final controller = StreamController<Iterable<Word>>();

    final sub = homeRep.getEntries().listen(
      (snapshots) {
        final words = snapshots.docs.map((w) {
          final id = w.id;
          final entry = Word.fromJson(w.data()).copyWith(id: id);
          return entry;
        });
        controller.sink.add(words);
      },
    );

    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });

    return controller.stream;
  },
);
