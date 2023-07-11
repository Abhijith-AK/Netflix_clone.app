import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/application/hot_and_new/hotandnew_bloc.dart';
import 'package:netflix_app/domain/hot_and_new/model/discover_movie.dart';
import 'package:netflix_app/presentation/new_and_hot/everyones_watching_cards.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';
import 'package:intl/intl.dart';
import '../../core/colors/colors.dart';
import '../../core/constants.dart';
import '../../core/strings.dart';
import 'coming_soon_cards.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            "New & Hot",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Blackcolor,
          actions: [
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
          bottom: TabBar(
              labelColor: Blackcolor,
              unselectedLabelColor: WhiteColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              isScrollable: true,
              indicator: BoxDecoration(
                  color: WhiteColor, borderRadius: BorderRadius.circular(30)),
              tabs: [
                Tab(text: "🍿 Coming Soon"),
                Tab(
                  text: "👀  Everyone's Watching",
                )
              ]),
        ),
        body: TabBarView(children: [
          _buildComingSoon(context),
          _buildEveryOnesWatching(context),
        ]),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const LoadDataInComingSoon());
    });
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text("Error while fetching data/network Error"),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text("List is Empty"),
          );
        } else {
          return ListView.builder(
              itemCount: state.comingSoonList.length,
              itemBuilder: (ctx, index) {
                final movie = state.comingSoonList[index];

                if (movie.id == null) {
                  return const SizedBox();
                }
                final _date = DateTime.parse(movie.releaseDate!);
                final formatedDate = DateFormat.yMMMd('en_US').format(_date);
                return ComingSoonCards(
                  id: movie.id.toString(),
                  month: formatedDate.split(' ').first.substring(0, 3),
                  day: movie.releaseDate!.split('-')[1],
                  backDropPath: "$imageAppendUrl${movie.backdropPath}",
                  movieTitle: movie.originalTitle ?? movie.title ?? '',
                  overView: movie.overview ?? '',
                  date: formatedDate,
                );
              });
        }
      },
    );
  }

  Widget _buildEveryOnesWatching(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context)
          .add(const LoadDataInEveryonesWatching());
    });

    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context)
            .add(const LoadDataInEveryonesWatching());
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.hasError) {
            return const Center(
              child: Text("Error while fetching data/network Error"),
            );
          } else if (state.everyOnesWatchingList.isEmpty) {
            return const Center(
              child: Text("List is Empty"),
            );
          } else {
            return ListView.builder(
                itemCount: state.everyOnesWatchingList.length,
                itemBuilder: (ctx, index) {
                  final tv = state.everyOnesWatchingList[index];
                  return EveryonesWatchingCards(
                    backDropPath: '$imageAppendUrl${tv.backdropPath}',
                    movieTitle: tv.orginalName ?? tv.name ?? '',
                    overView: tv.overview ?? '',
                  );
                });
          }
        },
      ),
    );
  }
}
