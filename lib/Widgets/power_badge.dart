import 'package:flutter/material.dart';

class PowerBadge extends StatelessWidget {
  final String text;
  const PowerBadge({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        color: Colors.green,
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
      child: Text(text),
    );
  }
}
