import 'package:aghul_dictionary/features/word_details/presentation/widgets/feature_container_widget.dart';
import 'package:flutter/material.dart';

class WordFeaturesWidget extends StatelessWidget {
  const WordFeaturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 10, color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FeatureContainerWidget(text: 'аудио', icon: Icons.volume_up),
          SizedBox(width: 20),
          FeatureContainerWidget(
              text: 'сохранить', icon: Icons.bookmark_outline),
          SizedBox(width: 20),
          FeatureContainerWidget(
              text: 'скопировать', icon: Icons.copy_outlined),
        ],
      ),
    );
  }
}
