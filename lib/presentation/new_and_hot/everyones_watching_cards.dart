import 'package:flutter/material.dart';

import '../../core/constants.dart';

class EveryonesWatchingCards extends StatelessWidget {
  final String backDropPath;
  final String movieTitle;
  final String overView;

  const EveryonesWatchingCards({
    super.key,
    required this.backDropPath,
    required this.movieTitle,
    required this.overView,
  });

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Dwidth - 40,
            height: Dwidth + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Dwidth - 40,
                  height: Dwidth - 150,
                  child: Image(
                    image: NetworkImage(backDropPath),
                    fit: BoxFit.cover,
                  ),
                ),
                Height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Height,
                          FittedBox(
                            child: Text(
                              movieTitle,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: WhiteColor),
                            ),
                          ),
                          Height,
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: WhiteColor,
                            ),
                            Text(
                              "Share",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        Width,
                        Width,
                        Column(
                          children: [
                            Icon(
                              Icons.add,
                              color: WhiteColor,
                            ),
                            Text(
                              "Add to list",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                        Width,
                        Width,
                        Column(
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: WhiteColor,
                            ),
                            Text(
                              "Play",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Height20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movieTitle,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Height,
                    Text(
                      overView,
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
