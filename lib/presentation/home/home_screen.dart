import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/Main_titles.dart';
import 'package:netflix_app/presentation/home/stack_list.dart';
import 'package:netflix_app/presentation/home/top_section.dart';

import '../../core/colors/colors.dart';
import 'main_card.dart';
import 'main_list.dart';

ValueNotifier<bool> scrollNot = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                ListView(
                  children: const [
                    TopSection(),
                    MainList(
                      title: "Popular on Netflix",
                    ),
                    MainList(
                      title: "Trending Now",
                    ),
                    StackList(
                      title: "Top TV Shows in India",
                    ),
                    MainList(
                      title: "Tense Dramas",
                    ),
                    MainList(
                      title: "South Indian Cinema",
                    ),
                  ],
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
