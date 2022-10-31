import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/youractivities.dart';

class YourActivitiesButonListWidget extends StatelessWidget {
  const YourActivitiesButonListWidget({
    Key? key,
    required this.youractivities,
  }) : super(key: key);

  final List<YourActivities> youractivities;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        itemCount: youractivities.length,
        itemBuilder: (context, index) {
          return Bounceable(
            onTap: () {},
            child: Column(
              children: [
          
                Container(
                  margin: EdgeInsets.only(left:10,right: 10,bottom: 10),
                  width: double.infinity,
                  height: 45,
                  color: Colors.black,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              youractivities[index].image,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              youractivities[index].title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                      
                          ],
                        ),
                        Container(margin: EdgeInsets.only(right: 15),child: SvgPicture.asset("assets/chevron-right.svg")),
                        
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xffFFFFFF).withOpacity(.1))
              ],
            ),
          );
        },
      ),
    );
  }
}
