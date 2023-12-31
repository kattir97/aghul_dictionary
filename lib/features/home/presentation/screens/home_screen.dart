import 'package:aghul_dictionary/features/home/data/local/isar_home_repository.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/all_entries_stream.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/get_entries_future.dart';
import 'package:aghul_dictionary/features/home/presentation/riverpod/isar_words_stream.dart';
import 'package:aghul_dictionary/features/search/presentation/riverpod/search_query_provider.dart';
import 'package:aghul_dictionary/features/search/presentation/riverpod/search_results_provider.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word_details/presentation/screens/word_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isarHomeRep = ref.read(isarHomeProvider);
    final isarWords = ref.watch(isarWordsStream);
    final getEntriesProvider = ref.watch(getEntriesFuture);
    // final allEntriesStreamProvider = ref.watch(allEntriesStream);
    final searchResults = ref.watch(searchResultsProvider);
    final searchTerm = ref.watch(searchQueryProvider);

    return RefreshIndicator(
      onRefresh: () async {
        ref.refresh(getEntriesFuture);
        // final getEntriesProvider = ref.watch(getEntriesFuture.future);
        // final addedOrUpdatedWords = await getEntriesProvider;
        // print('ADDEDORUPDATED:=======================\n $addedOrUpdatedWords');
        // await isarHomeRep.saveWords(addedOrUpdatedWords);
        getEntriesProvider.when(
          data: (data) {
            print('DATA:=======================\n $data');
            final listData = data.toList();
            isarHomeRep.saveWords(listData);
          },
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator(),
        );

        return Future.delayed(const Duration(seconds: 1));
      },
      child: isarWords.when(
        data: (words) {
          if (searchTerm.isEmpty) {
            return ListView.builder(
              itemCount: words.length,
              itemBuilder: (context, index) {
                final entry = words.elementAt(index);
                return GestureDetector(
                  child: ListTile(
                    title: Text(entry.word),
                    subtitle: Text(entry.definitions[0]),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        FocusManager.instance.primaryFocus?.unfocus();
                        return WordDetailsScreen(
                          wordId: entry.id!,
                        );
                      }),
                    );
                  },
                );
              },
            );
          } else {
            return ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                final entry = searchResults.elementAt(index);
                return GestureDetector(
                  child: ListTile(
                    title: Text(entry.word),
                    subtitle: Text(entry.definitions[0]),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WordDetailsScreen(
                                wordId: entry.id!,
                              )),
                    );
                  },
                );
              },
            );
          }
        },
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
