import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/models/youractivities.dart';
import 'package:spotify/pages/tophits.dart';
import 'package:spotify/widgets/home/titlewidget.dart';

import '../models/playlist.dart';
import '../widgets/yourlibrary/playlistgrid.dart';
import '../widgets/yourlibrary/youractivitiesbutonlist.dart';
import 'music.dart';

class YourLibraryScreen extends StatefulWidget {
  const YourLibraryScreen({super.key});

  @override
  State<YourLibraryScreen> createState() => _YourLibraryScreenState();
}

class _YourLibraryScreenState extends State<YourLibraryScreen> {


  List<YourActivities> youractivities = [
    YourActivities("assets/iconfavorite.svg", "Liked Songs"),
    YourActivities( "assets/iconpersons.svg", "Followed Artists"),
    YourActivities("assets/iconmicrofone.svg", "Followed Podcast "),
  ];
  List<Playlist> playlist = [
    Playlist("assets/Group30.png", "Playlists #1"),
    Playlist("assets/Group29.png", "Playlists #2"),
    Playlist("assets/Group31.png", "Playlists #3"),
    Playlist("assets/Group32.png", "Playlists #4"),
  ];

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;

    return SingleChildScrollView(
        child: Column(
      children: [
                  SizedBox(
          height: 15,
        ),
        appbar(padding),
        PlayListGridWidget(playlist: playlist),
              SizedBox(
          height: 25,
        ),
        seeAllButton(),
        SizedBox(
          height: 25,
        ),
        TitleWidget(title: "Your Activities"),
    
        YourActivitiesButonListWidget(youractivities: youractivities)
      ],
    ));
  }

  Bounceable seeAllButton() {
    return Bounceable(
        onTap: () {},
        child: Container(
          child: Text(
            "See all",
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      );
  }

  Container appbar(EdgeInsets padding) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: padding.top + 15),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Your Library",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          Row(
            children: [
              Bounceable(
                  onTap: () {},
                  child: SvgPicture.asset("assets/iconsearch.svg",
                      color: Colors.white)),
              SizedBox(
                width: 25,
              ),
              Bounceable(
                  onTap: () {},
                  child: SvgPicture.asset("assets/iconpp.svg",
                      color: Colors.white)),
            ],
          ),
        ]),
      );
  }
}


