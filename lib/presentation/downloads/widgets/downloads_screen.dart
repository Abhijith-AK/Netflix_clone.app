import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/downloads/downloads_bloc.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

import '../../../core/colors/colors.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWid(
          titile: 'Downloads',
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => const SizedBox(
          height: 25,
        ),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Width,
        Icon(
          Icons.settings,
          color: WhiteColor,
        ),
        Width,
        Text('Smart Downloads'),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: WhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Height,
        const Text(
          "We'll download a personalised selection of\n movies and shows for you,so there's\n always something to watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              height: size.width,
              width: size.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(alignment: Alignment.center, children: [
                      CircleAvatar(
                        radius: size.width * 0.37,
                        backgroundColor: Colors.grey.withOpacity(0.5),
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downloads?[2].posterPath}',
                        margin: const EdgeInsets.only(right: 160, bottom: 50),
                        size: Size(size.width * 0.5, size.width * 0.4),
                        angle: -25,
                      ),
                      DownloadsImageWidget(
                        imageList:
                            '$imageAppendUrl${state.downloads?[1].posterPath}',
                        size: Size(size.width * 0.5, size.width * 0.4),
                        margin: const EdgeInsets.only(left: 160, bottom: 50),
                        angle: 25,
                      ),
                      DownloadsImageWidget(
                        size: Size(size.width * 0.6, size.width * 0.4),
                        imageList:
                            '$imageAppendUrl${state.downloads?[0].posterPath}',
                        margin: const EdgeInsets.only(top: 0),
                      ),
                    ]),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: ButtoncolorBlue,
            onPressed: () {},
            child: const Text(
              "Setup",
              style: TextStyle(
                color: WhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        MaterialButton(
          color: ButtonColorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: () {},
          child: const Text(
            "See what you can download",
            style: TextStyle(
              color: Blackcolor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    required this.margin,
    required this.size,
    this.angle = 0,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
