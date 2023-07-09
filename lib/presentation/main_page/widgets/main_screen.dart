import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/downloads/widgets/downloads_screen.dart';
import 'package:netflix_app/presentation/games/games_screen.dart';
import 'package:netflix_app/presentation/home/home_screen.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflix_app/presentation/new_and_hot/new_hot_screen.dart';
import 'package:netflix_app/presentation/search/search_screen.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    GameScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChanger,
          builder: (context, int value, _) {
            return _pages[value];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
