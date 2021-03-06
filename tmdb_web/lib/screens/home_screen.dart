import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/appbar_section.dart';
import 'package:tmdb_web/widgets/banner/top_banner_card.dart';
import 'package:tmdb_web/widgets/trailer/trailer_section.dart';
import 'package:tmdb_web/widgets/trending/trending_section.dart';

import 'package:tmdb_web/widgets/footer/footerboard_tile.dart';
import 'package:tmdb_web/widgets/leaderboard/leaderboard_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        //AppBar Section
        title: CustomAppbar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopBannerSearchCard(),
              TrendingSection(),

              TrailerSection(),
              //LeaderBoard Section
              LeaderBoardTile(),
              //Footer Section
              FooterBoardTile(),
            ],
          ),
        ),
      ),
    );
  }
}
