import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:igclone/models/posts.dart';
import 'package:igclone/pages/Activitypage/Likepage.dart';
import 'package:igclone/pages/SearchPage/Searchpage.dart';
import 'package:igclone/pages/ownerpage/Ownerpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 56,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: SizedBox(
            height: 40,
            child: Image.asset("image_asset/insta_logo.png" ,),
                 ),
          
          actions: [
          IconButton(icon: SvgPicture.asset("image_asset/svg/messenger.svg" , width: 21 , height: 21 ,), onPressed: (){}),
              ]
            ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Posts(),
              ),
              ),
            ]),
      bottomNavigationBar: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 28,), 
              onPressed: () {}),
            IconButton(
              icon: Icon(Icons.search, size: 28), 
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SearchPage(),))),
            IconButton(
              icon: Icon(Icons.add, size: 28), 
              onPressed: (){}),
            IconButton(
              icon: Icon(Icons.favorite_border_outlined, size: 28), 
              onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Likepage(),))),
            IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 28), 
              onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage(),))),
          ],
        ),
      ),
    );
  }
}









/*
ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => 
        index == 0 ? Container(
                    height: 91,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Stories(),
                                  ),),
                              ],),) 
                          : Expanded(
                    child: Container(
                      //height: 500,
                      //height: MediaQuery.of(context).size.height,
                        child: Posts(),
                                  ),
      ),
        
      ),


Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                          child: Container(
                //height: MediaQuery.of(context).size.height,
              child: Column( 
               // scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 91,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Stories(),
                                  ),),
                            ],),
                          ),
                  Expanded(
                    child: Container(
                      //height: 500,
                      //height: MediaQuery.of(context).size.height,
                        child: Posts(),
                                  ),
                  ),
                         ]),            
                        ),
            ),
            ]),
 







*/