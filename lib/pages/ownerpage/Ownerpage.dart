import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igclone/pages/Activitypage/Likepage.dart';
import 'package:igclone/pages/SearchPage/Searchpage.dart';
import 'package:igclone/models/userspage.dart';
import 'package:igclone/pages/homepage/Hompage.dart';
import 'package:igclone/pages/ownerpage/owenerstoriesmodel.dart';

class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 56,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(" Owner page", style: TextStyle( color: Colors.black,),),
        //centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black , size: 28),
        actions: [
           IconButton(
             onPressed: (){},
             icon: Icon(Icons.add_box_outlined , color: Colors.black, size: 28,),),
           IconButton(
             onPressed: (){},
             icon: Icon(Icons.dehaze ,color: Colors.black,size: 28,),)
          ],),


    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            //height: MediaQuery.of(context).size.height,
            //color: Colors.red,
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
                          image: AssetImage('image_asset/stories/pic1.jpg'),
                          fit: BoxFit.cover ),),
                child: Stack(
                  children: [
                    Positioned(
                      top: 59,
                      left: 62,
                      child: Container(
                        height: 27,
                        width: 27,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,),
                            child: Container(
                              margin: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue, ),
                                child: Icon(Icons.add ,color: Colors.white,),
                                      ),                                
                                    )),
                                  ],),
                                            ),
                Container(
                  margin: EdgeInsets.only(left: 26),
                  height: 50,
                  width: 70,
                  child: Column(
                    children: [
                      Text("125" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                      Text("Post"),
                            ],),
                          ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 50,
                  width: 70,
                  child: Column(
                    children: [
                      Text("244" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                      Text("Followers"),
                            ],),
                          ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 50,
                  width: 70,
                  child: Column(
                    children: [
                      Text("320" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
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
                  child: Text(" Owner Page" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
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
              child: Text("Edit Profile" , style: TextStyle(fontSize: 13),),
                        ),
                      ),
              Container(
            width: 100,
           // margin: EdgeInsets.only(left:5),
            child: OutlinedButton(
              onPressed: (){},
              child: Text("Promotions", style: TextStyle(color: Colors.black , fontSize: 13),),
                        ),
                      ),
              Container(
            width: 100,
           // margin: EdgeInsets.only(left:5),
            child: OutlinedButton(
              onPressed: (){},
              child: Text("insights", style: TextStyle(color: Colors.black , fontSize: 13),),
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
            child: OwenerStories(),
                    ),
                ],),

SizedBox(height: 10,),

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
              icon: Icon(Icons.home_outlined, size: 28,), 
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
              icon: Icon(Icons.account_circle, size: 28), 
              onPressed: (){}),
          ],
        ),
      ),













      
    );
  }
}