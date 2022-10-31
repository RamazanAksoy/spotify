import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../models/artists.dart';

class SuggestedArtistListWidget extends StatelessWidget {
  const SuggestedArtistListWidget({
    Key? key,
    required this.artist,
  }) : super(key: key);

  final List<Artist> artist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: artist.length,
        itemBuilder: (context, index) {
          return Bounceable(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: 150,
              height: 130,
              decoration: BoxDecoration(
                  color: Color(0xff0E0E0F),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(children: [
                Container(
                    margin: EdgeInsets.only(top: 15),
                    width: 115,
                    height: 115,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: Colors.grey,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(artist[index].image)))),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 17),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    artist[index].title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
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
