import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/models/artists.dart';
import 'package:spotify/models/weeklymusic.dart';
import 'package:spotify/widgets/home/TitleWidget.dart';
import 'package:spotify/widgets/home/WeeklyMusicListWidget.dart';
import 'package:spotify/widgets/home/suggestedartistlist.dart';
import 'package:spotify/widgets/home/yourtopmixeslist.dart';

import '../models/topmixes.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   List<WeeklyMusic> weeklymusic=[WeeklyMusic("assets/pp5.png" , "30 Fresh music for you every week "),
   WeeklyMusic("assets/pp6.png",   "New songs every friday  ")];
  List<TopMixes> topMixes = [
    TopMixes("assets/pp3.png", "Hip Hop Mix",
        "Juice Wrld, Drake, Kendrick lamar and more... "),
    TopMixes(
      "assets/pp4.png",
      "Moody Mix",
      "Joji, The Kid LAROI, Tate McRae and more...",
    ),
    TopMixes("assets/pp3.png", "Hip Hop Mix",
        "Juice Wrld, Drake, Kendrick lamar and more... "),
    TopMixes(
      "assets/pp4.png",
      "Moody Mix",
      "Joji, The Kid LAROI, Tate McRae and more...",
    ),
  ];
  List<Artist> artist = [
    Artist("assets/Ellipse1.png", "The Kid LAROI"),
    Artist("assets/Ellipse2.png", "Taylor Swift"),
    Artist("assets/Ellipse1.png", "The Kid LAROI"),
    Artist("assets/Ellipse2.png", "Taylor Swift")
  ];

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;

    return SingleChildScrollView(
      child: Column(children: [
              SizedBox(
          height: 15,
        ),
        appbarWidget(padding),
        SizedBox(
          height: 30,
        ),
        weeklyMusicTitle(),
        SizedBox(
          height: 15,
        ),
        WeeklyMusicListWidget(weeklymusic: weeklymusic),
      
        TitleWidget(title: "Your Top Mixes"),
        SizedBox(
          height: 10,
        ),
        YourTopMixesListWidget(topMixes: topMixes),
        SizedBox(
          height: 20,
        ),
        TitleWidget(title: "Suggested artists"),

        SizedBox(
          height: 20,
        ),
        SuggestedArtistListWidget(artist: artist),
      ]),
    );
  }

  Row weeklyMusicTitle() {
    return Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 10),
            width: 25,
            height: 25,
            child: SvgPicture.asset("assets/lightning.svg"),
          ),
          Container(
            child: Text(
              "Weekly",
              style: TextStyle(
                  color: Color(0xff1ED760),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            child: Text(
              "Music",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      );
  }

  Container appbarWidget(EdgeInsets padding) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: padding.top + 15),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Good Morning",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Bounceable(
              onTap: () {},
              child: SvgPicture.asset("assets/more-vertical.svg",
                  color: Colors.white)),
        ]),
      );
  }
}




