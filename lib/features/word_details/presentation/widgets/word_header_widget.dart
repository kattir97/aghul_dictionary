import 'package:aghul_dictionary/features/word/domain/word.dart';
import 'package:flutter/material.dart';

class WordHeaderWidget extends StatelessWidget {
  final Word data;
  const WordHeaderWidget({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          data.word,
          style: const TextStyle(fontSize: 26),
        ),
        const SizedBox(height: 5),
        Text(
          'Часть речи: ${data.partOfSpeech}',
          style: const TextStyle(fontSize: 12, color: Colors.white54),
        ),
        Visibility(
          visible: data.ergative != null ? true : false,
          child: Text(
            'Эргатив: ${data.ergative!}',
            style: const TextStyle(fontSize: 12, color: Colors.white54),
          ),
        )
      ],
    );
  }
}
