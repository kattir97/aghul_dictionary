import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomTextformFieldWidget extends ConsumerWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextformFieldWidget({
    required this.label,
    required this.controller,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width * 0.75,
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
