import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          width: Dwidth,
          height: Dwidth * 1.65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg"))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: WhiteColor,
                      ),
                      Text(
                        "Add to list",
                        style: TextStyle(color: WhiteColor),
                      ),
                    ],
                  )),
              ElevatedButton(
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 30)),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
                onPressed: () {},
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(color: Blackcolor),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: WhiteColor,
                      ),
                      Text(
                        "Info",
                        style: TextStyle(color: WhiteColor),
                      ),
                    ],
                  )),
            ],
          ),
        )
      ],
    );
  }
}
