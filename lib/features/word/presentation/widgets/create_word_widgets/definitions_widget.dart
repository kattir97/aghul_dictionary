// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:aghul_dictionary/features/word/presentation/widgets/create_word_widgets/custom_textform_field_widget.dart';
import 'package:flutter/material.dart';

class DefinitionsWidget extends StatelessWidget {
  final List<TextEditingController> defControllers;
  final Function(int) removeDef;
  const DefinitionsWidget({
    Key? key,
    required this.defControllers,
    required this.removeDef,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(defControllers.length);
    return ListView.builder(
      shrinkWrap: true,
      itemCount: defControllers.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 7,
                child: CustomTextformFieldWidget(
                  label: 'Значение ${index + 2}',
                  controller: defControllers[index],
                ),
              ),
              Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () {
                    removeDef(index);
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
