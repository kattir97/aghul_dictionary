import 'package:flutter/material.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final String word;
  final void Function() onConfirm;
  final void Function() onCancel;

  const DeleteConfirmationDialog({
    required this.word,
    required this.onConfirm,
    required this.onCancel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Подтверждение удаления'),
      content: Text('Вы уверены что хотите удалить "$word"?'),
      actions: [
        ElevatedButton(
          onPressed: onCancel,
          child: const Text('Отменить'),
        ),
        ElevatedButton(
          onPressed: onConfirm,
          child: const Text('Да'),
        ),
      ],
    );
  }
}
