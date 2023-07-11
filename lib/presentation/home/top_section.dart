import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';

import '../../application/downloads/downloads_bloc.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    double Dwidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return Container(
              width: Dwidth,
              height: Dwidth * 1.65,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage('$imageAppendUrl${state.downloads?[0].posterPath}'))),
            );
          },
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
