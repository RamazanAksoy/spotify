import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/podcast.dart';

class PodcastListWidget extends StatelessWidget {
  const PodcastListWidget({
    Key? key,
    required this.podcasts,
  }) : super(key: key);

  final List<Podcast> podcasts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: podcasts.length,
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
                Stack(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 115,
                        height: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(podcasts[index].image)))),
                    Positioned(
                        top: 17,
                        left: 3,
                        child: Container(
                            width: 15,
                            height: 15,
                            child: SvgPicture.asset(
                              "assets/Single.svg",
                              color: index % 2 == 0
                                  ? Colors.white
                                  : Colors.black,
                            )))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(left: 17),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    podcasts[index].title,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  margin: EdgeInsets.only(left: 17),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    podcasts[index].text,
                    style:
                        TextStyle(fontSize: 10, color: Color(0xffDADADA)),
                  ),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
