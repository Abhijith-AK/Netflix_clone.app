import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/home_page/home_page_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/Main_titles.dart';
import 'package:netflix_app/presentation/home/stack_list.dart';
import 'package:netflix_app/presentation/home/top_section.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../core/colors/colors.dart';
import '../../core/strings.dart';
import 'main_card.dart';
import 'main_list.dart';

ValueNotifier<bool> scrollNot = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomePageBloc>(context).add(const GetHomeScreenData());
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    double Dwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: scrollNot,
        builder: (BuildContext context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              print(direction);
              if (direction == ScrollDirection.reverse) {
                scrollNot.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNot.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state.hasError) {
                      return const Center(
                        child: Text('Error while fetching Data'),
                      );
                    } else
                      final _releasedPastYear =
                          state.pastYearMovieList.map((m) {
                        return '$imageAppendUrl${m.posterPath}';
                      }).toList();
                    final _trendingNow = state.trendingNowList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();
                    final _releasedPastYear = state.pastYearMovieList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();
                    final _top10 = state.topTvShowsList.map((t) {
                      return '$imageAppendUrl${t.posterPath}';
                    }).toList();
                    final _tenseDramas = state.tenseDramasList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();
                    final _southIndian = state.SouthIndianCinemaList.map((m) {
                      return '$imageAppendUrl${m.posterPath}';
                    }).toList();
                    _southIndian.shuffle();
                    _releasedPastYear.shuffle();
                    _tenseDramas.shuffle();
                    _trendingNow.shuffle();
                    return ListView(
                      children: [
                        TopSection(),
                        MainList(
                            title: "Popular on Netflix",
                            imageUrl: _releasedPastYear),
                        MainList(title: "Trending Now", imageUrl: _trendingNow),
                        StackList(
                            title: "Top TV Shows in India", imageUrl: _top10),
                        MainList(title: "Tense Dramas", imageUrl: _tenseDramas),
                        MainList(
                            title: "South Indian Cinema",
                            imageUrl: _southIndian),
                      ],
                    );
                  },
                ),
                scrollNot.value == true
                    ? AnimatedContainer(
                        duration: Duration(microseconds: 1000),
                        color: Blackcolor.withOpacity(0.1),
                        width: Dwidth,
                        height: 90,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Width,
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png"),
                                    ),
                                  ),
                                ),
                                const Spacer(),
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
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "TV Shows",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: WhiteColor,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Movies",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: WhiteColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                    color: WhiteColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
//DropdownButton(items: , onChanged: onChanged),
                              ],
                            )
                          ],
                        ),
                      )
                    : Height,
              ],
            ),
          );
        },
      ),
    );
  }
}
