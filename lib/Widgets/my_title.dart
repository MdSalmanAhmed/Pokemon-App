import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String text;
  const MyTitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Text(
        "$text",
        style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
