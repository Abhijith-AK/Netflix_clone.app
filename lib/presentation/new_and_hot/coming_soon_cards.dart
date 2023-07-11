import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ComingSoonCards extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String backDropPath;
  final String movieTitle;
  final String overView;
  final String date;

  const ComingSoonCards(
      {super.key,
      required this.id,
      required this.month,
      required this.day,
      required this.backDropPath,
      required this.movieTitle,
      required this.overView,
      required this.date});

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
                  month.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  day,
                  style: const TextStyle(
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
                  child: Image(
                    image: NetworkImage(backDropPath),
                    fit: BoxFit.cover,
                  ),
                ),
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
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              style: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Height,
                          Text(
                            "Coming on $date ",
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Row(
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
                      movieTitle,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Height,
                    Text(
                      overView,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 15, color: Colors.grey),
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
