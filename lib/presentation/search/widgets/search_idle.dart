import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/presentation/search/widgets/search_title.dart';

import '../../../application/search/search_bloc.dart';
import '../../../core/constants.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches"),
        Height,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("Error while getting data"),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text("List is Empty"),
                );
              }
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  final name = state.idleList[index];

                  return TopSearchItemTiles(
                    title: name.originalName ?? name.title ?? "no title found",
                    imageURL: '$imageAppendUrl${name.backdropPath}',
                  );
                }),
                separatorBuilder: ((context, index) => Height20),
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTiles extends StatelessWidget {
  final String title;
  final String imageURL;
  const TopSearchItemTiles({
    super.key,
    required this.title,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: ScreenWidth * 0.40,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageURL),
            ),
          ),
        ),
        Width,
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.justify,
            style:const TextStyle(
              color: WhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
       const Icon(
          Icons.play_circle_outline_sharp,
          color: WhiteColor,
          size: 30,
        )
      ],
    );
  }
}
