import 'package:flutter/material.dart';

class FeatureContainerWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const FeatureContainerWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 65,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(height: 5),
            Text(text),
          ],
        ),
      ),
    );
  }
}
