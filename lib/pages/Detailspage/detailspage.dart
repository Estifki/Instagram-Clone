import 'package:flutter/material.dart';
import 'package:igclone/models/stories.dart';
import 'package:igclone/models/userspage.dart';
import 'package:igclone/pages/Activitypage/Likepage.dart';
import 'package:igclone/pages/SearchPage/Searchpage.dart';
import 'package:igclone/pages/homepage/Hompage.dart';

import '../ownerpage/Ownerpage.dart';

class DetailsPage extends StatefulWidget {
  final name;
  final picture;
  final post;
  final follower;
  final following;


  DetailsPage({
    this.name , 
    this.picture,
    this.post,
    this.follower,
    this.following,
    
    });

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("${widget.name}", style: TextStyle( color: Colors.black,),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black , size: 28),
        actions: [
           InkWell( onTap: (){},
            child: Container( padding: EdgeInsets.only(right:7),
               child: Icon(Icons.notifications_none_outlined , color: Colors.black, size: 28,)),
           ),
           InkWell( onTap: (){},
            child: Container( padding: EdgeInsets.only(right:7),
               child: Icon(Icons.more_horiz ,color: Colors.black,size: 28,)),
           ),
        ],),


    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('${widget.picture}'),
                          fit: BoxFit.cover ),),
                                  ),
                    Container(
                      margin: EdgeInsets.only(left: 26),
                      height: 50,
                      width: 70,
                      child: Column(
                        children: [
                          Text("${widget.post}" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                          Text("Post"),
                                ],),
                              ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 50,
                      width: 70,
                      child: Column(
                        children: [
                          Text("${widget.follower}" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                          Text("Followers"),
                                ],),
                              ),
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      height: 50,
                      width: 70,
                      child: Column(
                        children: [
                          Text("${widget.following}" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                          Text("Following" ),
                                ],),
                              ),
                  ],),

SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14),
                  child: Text("${widget.name}" , style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14),
                  child: Text("User details User details User details User details"),
                          ),
              ],
            ),

SizedBox(height: 10),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              margin: EdgeInsets.only(left:14),
              child: ElevatedButton(
                onPressed: (){},
                child: Text("Follow"),
                          ),
                        ),
            Container(
              width: 100,
            //  margin: EdgeInsets.only(left:5),
              child: OutlinedButton(
                onPressed: (){},
                child: Text("Message", style: TextStyle(color: Colors.black),),
                          ),
                        ),
            Container(
              width: 100,
            //  margin: EdgeInsets.only(left:5),
              child: OutlinedButton(
                onPressed: (){},
                child: Text("Contact", style: TextStyle(color: Colors.black),),
                          ),
                        ),
            Container(
              width: 54,
              margin: EdgeInsets.only(right:14),
              child: OutlinedButton(
                onPressed: (){},
                child: Icon(Icons.arrow_drop_down_sharp , color: Colors.black,),
                          ),
                        ),
                    ],),

SizedBox(height: 10),

      Row(
          children: [
            Container(
              //margin: EdgeInsets.only(left: 14),
              height: 90,
              width: MediaQuery.of(context).size.width * 100/100,
              child: Stories(),
                      ),
                  ],),

SizedBox(height: 10),

      DefaultTabController(
          length: 2, 
          child: Expanded(
                    child: Column(
                  children: [
                TabBar(     
                  labelColor: Colors.black,      
                  indicatorColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on),                      
                    ),
                  Tab(
                    icon: Icon(Icons.account_box_outlined),
                    )
                ],),

             Expanded(
              child: TabBarView(
                children: [              
                Ownerpic(),
                Container(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Photo and Video of You", style: TextStyle(
                          fontSize: 22 , 
                          fontWeight: FontWeight.bold),),
                          SizedBox(height: 4),
                        // Text("  When peopl tag you in photos or vidoes, \n they'll apper here", style: TextStyle(
                        //   fontSize: 18 , 
                        //   fontWeight: FontWeight.bold),),
                      ],
                    )
                  ),
                
                    ),
                  ]),
                ),
             
            ]),
          ),     
        ),
      
                
              ],),
            ),
         ),
      ],),

      bottomNavigationBar: Container(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 28,), 
              onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Homepage(),))),
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