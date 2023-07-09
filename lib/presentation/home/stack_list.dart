import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/stack_card.dart';

import 'Main_titles.dart';
import 'main_card.dart';

class StackList extends StatelessWidget {
  const StackList({super.key, required this.title});
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
                (index) => StackCard(
                  index: "$index",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
