import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/widgets/home/TitleWidget.dart';
import 'package:spotify/widgets/search/podcastlist.dart';

import '../models/browse.dart';
import '../models/podcast.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  List<Browse> browseAll = [
    Browse(
      Color(0xffE02FCF),
      Color(0xff00C188),
      "Made For You",
    ),
    Browse(
      Color(0xff0A3CEC),
      Color(0xff4DD4AC),
      "Charts",
    ),
    Browse(
      Color(0xff0A3CEC),
      Color(0xffD9DD01),
      "Discover",
    ),
    Browse(
      Color(0xff0E31AE),
      Color(0xffDD1010),
      "New Release",
    ),
        Browse(
      Color(0xffE02FCF),
      Color(0xff00C188),
      "Made For You",
    ),
    Browse(
      Color(0xff0A3CEC),
      Color(0xff4DD4AC),
      "Charts",
    ),
    Browse(
      Color(0xff0A3CEC),
      Color(0xffD9DD01),
      "Discover",
    ),
    Browse(
      Color(0xff0E31AE),
      Color(0xffDD1010),
      "New Release",
    ),
  ];

  List<Podcast> podcasts = [
    Podcast("assets/pp1.png", "Impaulsive", "334 ep."),
    Podcast("assets/pp2.png", "TED Talks Daily", "155 ep."),
    Podcast("assets/pp1.png", "Impaulsive", "334 ep."),
    Podcast("assets/pp2.png", "TED Talks Daily", "155 ep.")
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
          height: 15,
        ),
        searchTextField(),
       
        SizedBox(
          height: 10,
        ),
        tickedRow(),
        SizedBox(
          height: 20,
        ),
       TitleWidget(title: "Podcast’s"),
        PodcastListWidget(podcasts: podcasts),
        SizedBox(
          height: 25,
        ),
    TitleWidget(title: "Browse all"),
     
        browseAllListWidget()
      ]),
    );
  }

  Widget browseAllListWidget() {
    return  Container(
          height: 240,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: browseAll.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 16 / 10),
            itemBuilder: (context, index) {
              return Bounceable(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  margin: EdgeInsets.only(left:10,right: 10,bottom:10 ),
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [browseAll[index].startColor, browseAll[index].endColor],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                  child: Text(
                    browseAll[index].text.toString(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        )
      ;
  }

  Column tickedRow() {
    return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EtiketlerContainer("The Kid LAROI", false),
              EtiketlerContainer("Drake", false),
              EtiketlerContainer("Justin Bieber", false),
              EtiketlerContainer("Joji", false),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EtiketlerContainer("Hip Hop", true),
              EtiketlerContainer("Pop", true),
              EtiketlerContainer("Top-Hits", true),
            ],
          ),
        ],
      );
  }

  Container searchTextField() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        height: 50,
        color: Colors.black,
        child: TextField(
          decoration: InputDecoration(
            prefixIconColor: Colors.white,
            hoverColor: Colors.white,
            fillColor: Color(0xff0E0E0F),
            iconColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide.none,
            ),
            hintText: 'Artist, songs, or podcasts',
            hintStyle: TextStyle(
                color: Color.fromARGB(26, 255, 255, 255), fontSize: 14),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      );
  }

  Container appbarWidget(EdgeInsets padding) {
    return Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: padding.top + 15),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Search",
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

  Widget EtiketlerContainer(String name, bool alttami) {
    return Bounceable(
      onTap: () {},
      child: Container(
        height: 45,
        width: alttami ? 105 : null,
        padding: EdgeInsets.all(15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xff0E0E0F)),
        child: Text(
          name.toString(),
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}

