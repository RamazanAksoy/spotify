import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/music.dart';

class TodayTopHitsMusicListWidget extends StatelessWidget {
  const TodayTopHitsMusicListWidget({
    Key? key,
    required ScrollController controller, required this.musics,
  }) : _controller = controller, super(key: key);

  final ScrollController _controller;
  final List<Music> musics;
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: 380,
      child: ListView.builder(
      controller: _controller,

        itemCount: musics.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          

      
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 290,
                width: 290,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage(
                        musics[index].image,
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                child: Text(
                   musics[index].title,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  musics[index].text,
                  style: TextStyle(fontSize: 13, color: Colors.white),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
