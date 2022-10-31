import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../models/playlist.dart';
import '../../pages/music.dart';

class PlayListGridWidget extends StatelessWidget {
  const PlayListGridWidget({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final List<Playlist> playlist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        itemCount: playlist.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 16 / 16),
        itemBuilder: (context, index) {
          return Bounceable(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MusicScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  color: Color(0xff0E0E0F),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(playlist[index].image)))),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        playlist[index].title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 16),
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
