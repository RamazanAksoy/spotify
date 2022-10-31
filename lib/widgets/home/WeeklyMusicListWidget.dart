import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../../models/weeklymusic.dart';

class WeeklyMusicListWidget extends StatelessWidget {
  const WeeklyMusicListWidget({
    Key? key,
    required this.weeklymusic,
  }) : super(key: key);

  final List<WeeklyMusic> weeklymusic;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: weeklymusic.length,
        itemBuilder: (context, index) {
          return Bounceable(
            onTap: () {},
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 30),
                  margin: EdgeInsets.all(15),
                  width: 200,
                  height: 110,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(weeklymusic[index].image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Container(
                  width: 200,
                  height: 20,
                  child: Text(
                    weeklymusic[index].title,
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffDADADA).withOpacity(0.7)),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
