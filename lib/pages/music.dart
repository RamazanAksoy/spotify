import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/models/music.dart';
import 'package:spotify/pages/tophits.dart';
import 'package:spotify/widgets/home/titlewidget.dart';

import '../widgets/music/musiclist.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {


List<Music> musics=[
  Music("assets/music1.png", "STAY", "The Kid LAROI,Justin Bieber", true),
  Music("assets/music2.png", "Wishing Well", "Juice WLRD", true),
  Music("assets/music3.png", "First Class", "Jack Harlow", false),
  Music("assets/music4.png", "Unstable", "Justin Bieber,The Kid LAROI", false),
];

    List<bool> play=[true,false,false,false];
    bool muzikacikmi=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
             Container(height: 420,),
              appBarWidget(context),

              playButton()
            , SizedBox(height: 10),
                Positioned(bottom: 0,
                  child: Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 15),
      child: Text("Featuring",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
    )
                ),
          
            ],
         
          ),
                    MusicListWidget(musics: musics,),

        ],
      ),
    );
  }

  Container appBarWidget(BuildContext context) {
    return Container(
              padding: EdgeInsets.only(top: 50),
              alignment: Alignment.topLeft,
              height: 385,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/music.png",
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                           Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: SvgPicture.asset("assets/chevron-left.svg"),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20, top: 5),
                              child: SvgPicture.asset("assets/heart.svg"),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10, top: 5),
                              child: SvgPicture.asset(
                                  "assets/more-vertical.svg"),
                            ),
                          ],
                        )
                      ]),
                  Container(
                    width: 290,height: 20,
                    margin: EdgeInsets.only(left: 0, top: 174),
                    child: Image.asset("assets/today.png",alignment: Alignment.topLeft,)
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 50, top: 0),
                    child: Text(
                      "TOP HITS",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: SvgPicture.asset("assets/iconfavorite.svg",color: Color(0xffFFFF).withOpacity(.5),height: 20,),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "357,828 likes",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(.5)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: SvgPicture.asset("assets/icontime.svg"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "2hr 40min",
                          style: TextStyle(
                              color: Color(0xffFFFFFF).withOpacity(.5)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
  }

  Positioned playButton() {
    return Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xff1ED760),
                    borderRadius: BorderRadius.circular(400)),
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/play.svg",
                      color: Colors.black,
                      height: 25,
                    )),
              ),
            );
  }
}
