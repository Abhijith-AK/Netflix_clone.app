import 'package:flutter/material.dart';

import '../../core/constants.dart';

class EveryonesWatchingCards extends StatelessWidget {
  const EveryonesWatchingCards({super.key});

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Dwidth - 10,
            height: Dwidth + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Dwidth - 10,
                  height: Dwidth - 150,
                  child: const Image(
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w1920_and_h800_multi_faces/wRTZaxAiDP0ZEeQsO0HiiSqYCSp.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Height,
                        Text(
                          "TITLE",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        Height,
                      ],
                    ),
                    Row(
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
                                  TextStyle(fontSize: 10, color: Colors.grey),
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
                                  TextStyle(fontSize: 10, color: Colors.grey),
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
                                  TextStyle(fontSize: 10, color: Colors.grey),
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
                      "Title",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Height,
                    Text(
                      "hsakhdkfgesgfkwehfhfhdsfhsf fsdajk s hdkjshhsjd hes hw hehiewhoigoiew wg  hgrewiue u hgwehu ugwhuehrwu haw ei ihriuh iewewrk ferreuih hrih wurehh uhur huhr hhreuhhwe wiu    HRWUH HSAH EWWE  H EWKRFHIU ",
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
