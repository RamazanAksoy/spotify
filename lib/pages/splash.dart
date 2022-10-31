import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/pages/getstarted.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
 bool basladimi=true;

 AnimationController? _animationController;
  Animation? _colorTween;

  @override
  void initState() {

       _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _colorTween = ColorTween(begin: Colors.white, end: Color(0xff1ED760))
        .animate(_animationController!);
               // _animationController!.forward();


    // TODO: implement initState
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => StartedScreen()));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      AnimatedBuilder(
      animation: _colorTween!,
      builder: (context, child) => 
        Center(
            child: SvgPicture.asset(
              "assets/splash.svg",
              color:  _colorTween!.value,
            )
      
    )));
  }
}
