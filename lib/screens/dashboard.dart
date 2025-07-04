//import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/home.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(" Welcome to", style: TextStyle(fontSize: 30, fontFamily: "Roboto",),),
              Text(" GG",textAlign: TextAlign.center,style: TextStyle(fontFamily: "Space Mission",
              fontSize: 170,),),
              IconButton(
                icon: Icon(
                  Icons.keyboard_double_arrow_right_sharp, 
                  ),
                  onPressed: (){
                    // TODO Figure out how to convert the Home() widget into a Route()
                    Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (context) => Home())
                    );
                  },
                  iconSize: 100,
                  color: const Color.fromARGB(255, 20, 9, 118),
                  focusColor: const Color.fromARGB(255, 239, 8, 8),
                  hoverColor: const Color.fromARGB(255, 7, 53, 255),
                  splashColor: Colors.black,
                  highlightColor: const Color.fromARGB(255, 9, 49, 225),
              ),
            ],
          ),
        ),
    );
  }
}
