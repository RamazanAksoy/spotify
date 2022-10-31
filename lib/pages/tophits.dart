import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/models/music.dart';

import '../widgets/tophits/TodayTopHitsMusicListWidget.dart';

class TopHitsScreen extends StatefulWidget {
  List<Music> musics=[];

   TopHitsScreen({super.key,required this.musics});

  @override
  State<TopHitsScreen> createState() => _TopHitsScreenState();
}

class _TopHitsScreenState extends State<TopHitsScreen> {
 ScrollController _controller = ScrollController(initialScrollOffset: 275 * 1);


int currentindex=0;
 double slidervalue=0.22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              margin: EdgeInsets.all(14),
              child: SvgPicture.asset("assets/chevron-bottom.svg")),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Container(
          child: Text("Today’s Top Hits",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        ),
        actions: [
          SvgPicture.asset("assets/more-vertical.svg"),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TodayTopHitsMusicListWidget(controller: _controller,musics: widget.musics),
            SliderWidget(),
            SizedBox(
              height: 25,
            ),
            ButtonList(),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/splachscreenIcon.svg"),
                SizedBox(
                  width: 15,
                ),
                Text("Airpods Pro",
                    style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                    )),
              ],
            ),
                 SizedBox(
              height: 10,
            ),
           
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white.withOpacity(.05)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                    SvgPicture.asset("assets/heart.svg"),
                       SvgPicture.asset("assets/artist.svg"),
                          SvgPicture.asset("assets/iconbok.svg"),
                             SvgPicture.asset("assets/devices.svg"),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  Padding ButtonList() {
    return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset("assets/shuffle.svg"),
                SvgPicture.asset("assets/Unionback.svg"),
                SvgPicture.asset("assets/play-pause-button.svg"),
                SvgPicture.asset("assets/Union.svg"),
                SvgPicture.asset("assets/repeat.svg"),
              ],
            ),
          );
  }

  Padding SliderWidget() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [
                  Slider(max: 2.53,thumbColor: Colors.white,inactiveColor: Color(0xffD9D9D9),activeColor: Color(0xff1ED760),value: slidervalue, onChanged: (value) {
                    setState(() {
                      slidervalue=value;
                    });
                  },),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Text(
                             slidervalue.toStringAsFixed(2),
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffB3B3B3)),
                            )),
                        Container(
                            child: Text(
                              "2.53",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffB3B3B3)),
                            ))
                      ],
                    ),
                  )
                ],
              ));
  }
}

