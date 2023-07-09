import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/games/video_list_item.dart';

import '../../core/colors/colors.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(10, (index) {
                return VideoListItem(
                  index: index,
                );
              }))),
    );
  }
}
