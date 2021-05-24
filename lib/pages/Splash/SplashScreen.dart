import 'dart:async';
import 'package:igclone/Mainpage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() => 
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => Mainpage(),))    
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 100/100,
          width:  MediaQuery.of(context).size.width * 100/100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 26/100,
                width: MediaQuery.of(context).size.width * 26/100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image_asset/ig_clone.jpg"),
                          ),),
                        ),
              
                    ],),
              ),      
            );
  }
}