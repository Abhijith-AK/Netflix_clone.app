import 'package:flutter/material.dart';

import 'Main_titles.dart';
import 'main_card.dart';

class MainList extends StatelessWidget {
  const MainList({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Maintitle(title: title),
          LimitedBox(
            maxHeight: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => MainCard(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
