import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/all_entries_stream.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/isar_words_stream.dart';
import 'package:aghul_dictionary/features/word_details/presentation/screens/word_details_screen.dart';
import 'package:aghul_dictionary/isar/models/isar_word.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isarHomeRep = ref.read(isarHomeProvider);
    final isarWords = ref.watch(isarWordsStream);
    final asyncValue = ref.watch(allEntriesStream);

    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(allEntriesStream);
        asyncValue.when(
          data: (data) {
            final listData = data.toList();
            print('Data ========== $listData =============');
            isarHomeRep.saveWords(listData);
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        );

        return Future.delayed(const Duration(seconds: 1));
      },
      child: isarWords.when(
        data: (words) {
          final list = words.toList();
          return ListView.builder(
            itemCount: words.length,
            itemBuilder: (context, index) {
              print('=========words==========: $words');
              final entry = words.elementAt(index);
              return GestureDetector(
                child: ListTile(
                  title: Text(entry.word ?? ''),
                  subtitle: Text(entry.definitions![0]),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WordDetailsScreen(
                              wordId: entry.wordId!,
                            )),
                  );
                },
              );
            },
          );
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
