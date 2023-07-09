import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/presentation/new_and_hot/everyones_watching_cards.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

import '../../core/colors/colors.dart';
import '../../core/constants.dart';
import 'coming_soon_cards.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            "New & Hot",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Blackcolor,
          actions: [
            const Icon(
              Icons.cast,
              color: Colors.white,
            ),
            Width,
            Container(
              width: 30,
              height: 30,
              color: Colors.blue,
            ),
            Width,
          ],
          bottom: TabBar(
              labelColor: Blackcolor,
              unselectedLabelColor: WhiteColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              isScrollable: true,
              indicator: BoxDecoration(
                  color: WhiteColor, borderRadius: BorderRadius.circular(30)),
              tabs: [
                Tab(text: "🍿 Coming Soon"),
                Tab(
                  text: "👀  Everyone's Watching",
                )
              ]),
        ),
        body: TabBarView(children: [
          _buildComingSoon(context),
          _buildEveryOnesWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
        itemCount: 14,
        itemBuilder: (ctx, index) {
          return ComingSoonCards();
        });
  }

  Widget _buildEveryOnesWatching() {
    return ListView.builder(
        itemCount: 14,
        itemBuilder: (ctx, index) {
          return EveryonesWatchingCards();
        });
  }
}
