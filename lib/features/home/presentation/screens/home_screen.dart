import 'package:aghul_dictionary/features/home/presentation/riverpod/all_entries_stream.dart';
import 'package:aghul_dictionary/features/word_details/presentation/screens/word_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final entries = ref.watch(allEntriesStream);

    return RefreshIndicator(
      onRefresh: () {
        final newValue = ref.refresh(allEntriesStream);
        return Future.delayed(const Duration(seconds: 1));
      },
      child: entries.when(
        data: (entries) {
          return ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, index) {
              print('=========Entries==========: $entries');
              final entry = entries.elementAt(index);
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
