import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import 'login.dart';
import '../main.dart';

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/background.png"), fit: BoxFit.cover),
      ),
      child: Column(children: [
        Container(
          margin: EdgeInsets.only(top: size.height / 10 * 7.40),
          child: Text("Spotify",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(
              left: 25, top: size.height / 10 * 0.15, right: 30),
          child: Text(
              "A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.",
              style: TextStyle(
                  color: Colors.white, fontSize: 14, letterSpacing: 1)),
        ),
        SizedBox(height: 30,),
        Bounceable(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.center,
            width: size.width,
            height: size.height / 10 * 0.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xff1ED760)),
            child: Text("Get Started",style: TextStyle(
                    color: Colors.white, fontSize: 18,letterSpacing: 0.5,fontWeight: FontWeight.bold)),),
        ),
        
      ]),
    ));
  }
}
