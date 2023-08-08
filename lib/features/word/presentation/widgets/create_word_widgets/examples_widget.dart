// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aghul_dictionary/features/word/presentation/widgets/create_word_widgets/custom_textform_field_widget.dart';
import 'package:flutter/material.dart';

class ExamplesWidget extends StatelessWidget {
  final List<TextEditingController> examplesControllers;
  final Function(int) removeExample;
  const ExamplesWidget({
    Key? key,
    required this.examplesControllers,
    required this.removeExample,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: examplesControllers.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 7,
                child: CustomTextformFieldWidget(
                  label: 'Пример ${index + 2}',
                  controller: examplesControllers[index],
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    removeExample(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
