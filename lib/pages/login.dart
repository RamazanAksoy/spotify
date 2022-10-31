import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';

import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSwitched = false;
    FocusNode focusNode=FocusNode();
        FocusNode focusNode2=FocusNode();

@override
  void initState() {
    // TODO: implement initState
    focusNode.addListener(() {
      setState(() {
        
      });
    });
     focusNode2.addListener(() {
      setState(() {
        
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: size.height,
        ),
        Container(
          width: size.width,
          height: size.height / 10 * 6,
          decoration: BoxDecoration(
              color: Color(0xff1ED760),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100))),
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(top: size.height / 10 * 1.2),
                child: SvgPicture.asset("assets/logo.svg")),
            Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "MIllions of songs, free on spotify",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ))
          ]),
        ),
        Positioned(
          top: size.height / 10 * 3,
          child: Container(
            margin: EdgeInsets.all(size.width / 10 * 0.5),
            width: size.width / 10 * 9,
            height: size.height / 10 * 5.6,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Column(children: [
              SizedBox(
                height: size.height / 10 * 0.3,
              ),
              Text(
                "Login Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22),
              ),
              SizedBox(
                height: size.height / 10 * 0.4,
              ),
              
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 40,
                child: TextFormField(
                focusNode: focusNode,
              autofocus: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 12),

                          focusedBorder:OutlineInputBorder(
            borderSide:  BorderSide(color: Color(0xff1ED760), width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
                  enabledBorder:OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffDADADA), width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
                    hintText: 'Email or username',
                    hintStyle:
                        TextStyle(
                      color:focusNode.hasFocus? Color(0xff1ED760):Color(0xffDADADA),
                           fontSize: 14),
                    suffixIcon: Icon(
                      Icons.email,
                      color:focusNode.hasFocus? Color(0xff1ED760):Color(0xffDADADA),
                    ),
                  ),
                ),
              ),
             
             
              SizedBox(
                height: size.height / 10 * 0.3,
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                height: 40,
                child: TextFormField(
                
                focusNode: focusNode2,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 12),

                          focusedBorder:OutlineInputBorder(
            borderSide:  BorderSide(color: Color(0xff1ED760), width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
                  enabledBorder:OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffDADADA), width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
      ),
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(                      color:focusNode2.hasFocus? Color(0xff1ED760):Color(0xffDADADA),
fontSize: 14),
                    suffixIcon: Padding(padding: EdgeInsets.all(8),child: SvgPicture.asset("assets/removedeye.svg", color:focusNode2.hasFocus? Color(0xff1ED760):Color(0xffDADADA),height: 10,))
                    
                 
                  ),
                ),
              ),
             
             
              SizedBox(
                height:25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Remember me",
                      style: TextStyle(color: Color(0xffDADADA)),
                    ),
   
Container(child: SvgPicture.asset("assets/toggle.svg"))
                  
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Bounceable(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: '',),));

              },
                child: Container(
                  width: size.width / 10 * 8,
                  height: size.height / 10 * 0.55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff1ED760)),
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: size.width / 10 * 3,
                      height: 1,
                      color: Colors.black.withOpacity(0.2)),
                  Text(
                    "or",
                    style: TextStyle(color: Color(0xffDADADA)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      width: size.width / 10 * 3,
                      height: 1,
                      color: Colors.black.withOpacity(0.2)),
                ],
              ),
               SizedBox(
                height: 15,
              ),              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/google.png"),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset("assets/facebook.png")
                ],
              ),
          
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "Forget password?",
                  style: TextStyle(color: Color(0xffDADADA)),
                ),
              )
            ]),
          ),
        ),
        Positioned(
          bottom: size.height / 10 * 0.5,
          child: SizedBox(
            width: size.width,
            height: size.height / 10 * 0.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Sign up now",
                  style: TextStyle(
                      color: Color(0xff1ED760), fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
