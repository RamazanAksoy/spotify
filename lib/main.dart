import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/search.dart';
import 'package:spotify/pages/splash.dart';
import 'package:spotify/pages/tophits.dart';
import 'package:spotify/pages/yourlibrary.dart';

import 'pages/getstarted.dart';
import 'pages/login.dart';
import 'pages/music.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

    var selectedindex=0;
 AnimationController? _animationController;
  Animation? _colorTween;

  @override
  void initState() {

       _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _colorTween = ColorTween(begin: Colors.white, end: Color(0xff1ED760))
        .animate(_animationController!);

 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
        BottomNavigationBar(backgroundColor: Colors.black,items: [
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/iconhome.svg",color: selectedindex==0?Color(0xff1ED760):Colors.white,),label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/iconsearch.svg",color: selectedindex==1?Color(0xff1ED760):Colors.white,),label: ""),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/iconbook.svg",color: selectedindex==2?Color(0xff1ED760):Colors.white,),label: ""),
      
        ],currentIndex: selectedindex,selectedItemColor: Colors.blue,onTap: 
        (value) {
                          _animationController!.forward();

          setState(() {
            selectedindex=value;
          });
        },),
    body: page(selectedindex),
      backgroundColor: Colors.black,
     
    
    );


  }
     page(int index){
     switch(index) {
      case (0): {
        return HomeScreen();
      }
      break;


        case (1): {
        return SearchScreen();
      }
      break;

        case (2): {
        return YourLibraryScreen();
      }
      break;
     
      default: {
        
      }
     }
    }


 
}
