import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/models/music.dart';

import '../../pages/tophits.dart';

class MusicListWidget extends StatefulWidget {
  const MusicListWidget({super.key, required this.musics});

  final List<Music> musics;

  @override
  State<MusicListWidget> createState() => _MusicListWidgetState();
}

class _MusicListWidgetState extends State<MusicListWidget> {
      List<bool> play=[false,false,true,false];
    bool muzikacikmi=true;
  @override
  Widget build(BuildContext context) {
    return 
          SingleChildScrollView(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TopHitsScreen(musics: widget.musics),));
              },
              child: Column(
                children: [
               
                  SizedBox(
                    height: 380,
                    child: ListView.builder(
                      itemCount: widget.musics.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                                  SizedBox(height: 5,),
                            Container(
                              width: double.infinity,
                              height: 90,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  Stack(alignment: Alignment.center,
                                    children: [
                                    
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(widget.musics[index].image),
                                                fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(15),
                                            color: Colors.blue),
                                      ),
                                    Positioned(left: 44,child: Bounceable(onTap: () {
                                      setState(() {
                                              play=[false,false,false,false];
                                      play[index]=true;
                                      });
                                
                                    },child: SvgPicture.asset(play[index]==false?"assets/play.svg":"assets/stop.svg")))
                                   
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 180,
                                        margin: EdgeInsets.only(top: 20, left: 17),
                                        child: Text(
                                          textAlign: TextAlign.left,
                                          widget.musics[index].title,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                        width: 180,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(top: 12, left: 17),
                                        child: Text(
                                         widget.musics[index].text,
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Bounceable(
                                    onTap: () {
                                      setState(() {
                                      widget. musics[index].favorite=!widget.musics[index].favorite;

                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 300),

                                      width:widget.musics[index].favorite!=true? 20:22,
                                      height: widget.musics[index].favorite!=true? 20:22,
                                      child: widget.musics[index].favorite==true?SvgPicture.asset("assets/iconfavorite.svg"):SvgPicture.asset("assets/heart.svg"),
                                    ),
                                  ),
                                     SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: SvgPicture.asset("assets/more-vertical.svg"),
                                  )
                                ],
                              ),
                            ),
                      SizedBox(height: 5,)
                      ,   Container(height: 1,width: double.infinity,color: Color(0xffFFFFFF).withOpacity(.2))
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
       ;
  }
}