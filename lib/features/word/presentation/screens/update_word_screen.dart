import 'package:aghul_dictionary/common/loading_widget.dart';
import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:aghul_dictionary/features/word/presentation/riverpod/is_loading_provider.dart';
import 'package:aghul_dictionary/features/word/presentation/riverpod/word_upload_notifier.dart';
import 'package:aghul_dictionary/features/word/presentation/widgets/create_word_widgets/custom_textform_field_widget.dart';
import 'package:aghul_dictionary/features/word/presentation/widgets/create_word_widgets/definitions_widget.dart';
import 'package:aghul_dictionary/features/word/presentation/widgets/create_word_widgets/examples_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class UpdateWordScreen extends ConsumerStatefulWidget {
  final Word word;
  final String wordId;
  const UpdateWordScreen({
    required this.word,
    required this.wordId,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateWordScreenState();
}

class _CreateWordScreenState extends ConsumerState<UpdateWordScreen> {
  TextEditingController wordController = TextEditingController();
  TextEditingController firstDefController = TextEditingController();
  TextEditingController firstExController = TextEditingController();
  TextEditingController partOfSpeechController = TextEditingController();
  TextEditingController ergativeController = TextEditingController();
  List<TextEditingController> examplesControllers = [];
  List<TextEditingController> defControllers = [];

  @override
  void initState() {
    super.initState();
    print('INIT STATE');
    wordController.text = widget.word.word;
    firstDefController.text = widget.word.definitions[0];
    firstExController.text = widget.word.examples?[0] ?? '';
    ergativeController.text = widget.word.ergative ?? '';
    partOfSpeechController.text = widget.word.partOfSpeech;

    final defs = widget.word.definitions.length;
    final exs = widget.word.examples?.length ?? 0;
    for (var i = 1; i < defs; i++) {
      defControllers
          .add(TextEditingController(text: widget.word.definitions[i]));
    }
    print('DEFS: $defControllers');

    for (var i = 1; i < exs; i++) {
      defControllers.add(TextEditingController(text: widget.word.examples?[i]));
    }
    print('EXS: $examplesControllers');
  }

  String? validator(value) {
    if (value == null || value.isEmpty) {
      return 'Это поле обязательное';
    }
    return null;
  }

  void removeDef(int index) {
    setState(() {
      defControllers[index].clear();
      defControllers[index].dispose();
      defControllers.removeAt(index);
    });
  }

  void removeExample(
    int index,
  ) {
    setState(() {
      examplesControllers[index].clear();
      examplesControllers[index].dispose();
      examplesControllers.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактировать Слово'),
      ),
      body: Consumer(builder: (_, ref, child) {
        ref.listen<bool>(
          isLoadingProvider,
          (_, isLoading) {
            if (isLoading) {
              showDialog(
                barrierDismissible: false,
                builder: (ctx) {
                  return LoadingWidget(
                    context: context,
                    text: 'Отправка данных...',
                  );
                },
                context: context,
              );
            } else {
              Navigator.of(context).pop();
            }
          },
        );
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextformFieldWidget(
                      label: 'Слово',
                      controller: wordController,
                      validator: validator,
                    ),
                    const SizedBox(height: 5),
                    CustomTextformFieldWidget(
                      label: 'Значение 1',
                      controller: firstDefController,
                      validator: validator,
                    ),
                    const SizedBox(height: 5),
                    DefinitionsWidget(
                      defControllers: defControllers,
                      removeDef: removeDef,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (defControllers.length >= 5) {
                          return;
                        }
                        setState(() {
                          defControllers.add(TextEditingController());
                        });
                      },
                      child: const Text('Добавить Значение'),
                    ),
                    const SizedBox(height: 10),
                    CustomTextformFieldWidget(
                      label: 'Часть Речи',
                      controller: partOfSpeechController,
                    ),
                    const SizedBox(height: 5),
                    CustomTextformFieldWidget(
                      label: 'Эргатив',
                      controller: ergativeController,
                    ),
                    const SizedBox(height: 5),
                    CustomTextformFieldWidget(
                      label: 'Пример 1',
                      controller: firstExController,
                    ),
                    const SizedBox(height: 5),
                    ExamplesWidget(
                        examplesControllers: examplesControllers,
                        removeExample: removeExample),
                    const SizedBox(height: 5),
                    ElevatedButton(
                      onPressed: () {
                        if (examplesControllers.length >= 3) {
                          return;
                        }
                        setState(() {
                          examplesControllers.add(TextEditingController());
                        });
                      },
                      child: const Text('Добавить Пример'),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: () async {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }

                        List<String> defs = [];
                        List<String> examps = [];

                        List<TextEditingController> allControllers = [
                          wordController,
                          firstDefController,
                          firstExController,
                          ...defControllers,
                          ...examplesControllers,
                          ergativeController,
                          partOfSpeechController,
                        ];

                        for (final con in defControllers) {
                          if (con.text.isNotEmpty) {
                            defs.add(con.text);
                          }
                        }

                        for (final examp in examplesControllers) {
                          if (examp.text.isNotEmpty) {
                            examps.add(examp.text);
                          }
                        }

                        final word = Word(
                          word: wordController.text,
                          definitions: [firstDefController.text, ...defs],
                          partOfSpeech: partOfSpeechController.text,
                          ergative: ergativeController.text,
                          examples: [firstExController.text, ...examps],
                        );

                        await ref
                            .read(wordUploadProvider.notifier)
                            .updatedWord(word, widget.wordId);

                        for (final con in allControllers) {
                          con.clear();
                        }

                        if (context.mounted) {
                          Navigator.of(context).pop();
                        }
                      },
                      icon: const Icon(Icons.upload),
                      label: const Text('Править Слово'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
