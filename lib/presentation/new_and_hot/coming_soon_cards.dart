import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ComingSoonCards extends StatelessWidget {
  const ComingSoonCards({super.key});

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: Dwidth + 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FEB",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "11",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: Dwidth - 50,
            height: Dwidth + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Dwidth - 50,
                  height: Dwidth - 150,
                  child: const Image(
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w1920_and_h800_multi_faces/dsxpP9qbF1PHk4j4aPjimkLTwxq.jpg"),
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
                        Text(
                          "Coming soon ..",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.notifications_none,
                              color: WhiteColor,
                            ),
                            Text(
                              "Remind me",
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
                              Icons.info_outline,
                              color: WhiteColor,
                            ),
                            Text(
                              "Info",
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
