import 'package:flutter/material.dart';

class ListDataWidget extends StatelessWidget {
  final List<String>? data;
  final String title;
  const ListDataWidget({
    super.key,
    required this.data,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          // Title Text widget
          Text(
            title, // Replace with your desired title
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
              height: 10), // Add some space between the title and the list

          // List of definitions
          ...?data?.asMap().entries.map((entry) {
            final int idx = entry.key + 1;
            final String val = entry.value;
            return DefaultTextStyle(
              style: const TextStyle(color: Colors.black, fontSize: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$idx.'),
                  const SizedBox(width: 3),
                  Flexible(
                    child: Text(
                      val,
                      softWrap: true,
                      maxLines: 5,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
