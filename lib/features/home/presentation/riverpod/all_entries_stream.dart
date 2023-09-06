import 'dart:async';

import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:aghul_dictionary/features/home/data/remote/home_repository.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final allEntriesStream = StreamProvider.autoDispose<Iterable<Word>>(
  (ref) async* {
    final homeRep = ref.read(homeRepositoryProvider);
    final isarHomeRep = ref.read(isarHomeProvider);
    final controller = StreamController<Iterable<Word>>();

    final allDocs = await isarHomeRep.getAllDocs();

    controller.sink.add(allDocs);

    final sub = homeRep.getEntries().listen((modifiedOrAddedWords) {
      controller.sink.add(modifiedOrAddedWords);
    });

    ref.onDispose(() {
      sub.cancel();
      controller.close();
    });

    yield* controller.stream;
  },
);
