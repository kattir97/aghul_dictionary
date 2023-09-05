import 'package:aghul_dictionary/features/word/presentation/screens/update_word_screen.dart';
import 'package:aghul_dictionary/features/word_details/data/remote/word_details_repository.dart';
import 'package:aghul_dictionary/features/word_details/presentation/riverpod/isar_word_future_provider.dart';
import 'package:aghul_dictionary/features/word_details/presentation/widgets/delete_confirmation_dialog.dart';
import 'package:aghul_dictionary/features/word_details/presentation/widgets/list_data_widget.dart';
import 'package:aghul_dictionary/features/word_details/presentation/widgets/word_features_widget.dart';
import 'package:aghul_dictionary/features/word_details/presentation/widgets/word_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordDetailsScreen extends ConsumerWidget {
  final String wordId;
  const WordDetailsScreen({
    super.key,
    required this.wordId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final details = ref.watch(wordDetailsFutureProvider(wordId));
    final details = ref.watch(isarWordFutureProvider(wordId));

    return details.when(
      data: (data) {
        print("WORD++++++++++++++++\n$data");
        return Scaffold(
          backgroundColor: const Color(0xFFEBEEF4),
          appBar: AppBar(
            title: const Text('Gaf'),
            centerTitle: true,
            backgroundColor: const Color(0xFFD5374F),
            elevation: 0.5,
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateWordScreen(
                              word: data,
                              wordId: wordId,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit)),
                  IconButton(
                    onPressed: () {
                      _showDeleteConfirmationDialog(context, ref, wordId);
                    },
                    icon: const Icon(Icons.delete),
                  )
                ],
              )
            ],
          ),
          body: SafeArea(
            child: DefaultTextStyle(
              style: const TextStyle(color: Colors.white, fontSize: 23),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0xFFD5374F),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WordHeaderWidget(
                          data: data,
                        ),
                        const WordFeaturesWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  ListDataWidget(
                    data: data.definitions,
                    title: 'Значения:',
                  ),
                  ListDataWidget(
                    data: data.examples,
                    title: 'Примеры:',
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

void _showDeleteConfirmationDialog(
    BuildContext context, WidgetRef ref, String wordId) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DeleteConfirmationDialog(
        word: 'это слово', // Replace 'Example' with the actual word to delete
        onConfirm: () {
          ref.read(wordDetailsProvider).deleteWord(wordId);
          Navigator.pop(context); // Close the dialog
          Navigator.of(context).pop();
        },
        onCancel: () {
          Navigator.pop(context); // Close the dialog
        },
      );
    },
  );
}
