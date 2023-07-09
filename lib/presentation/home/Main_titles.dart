import 'package:flutter/material.dart';

class Maintitle extends StatelessWidget {
  const Maintitle({
    super.key,
    required this.title,
  });

  final title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
