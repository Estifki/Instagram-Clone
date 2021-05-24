import 'package:flutter/material.dart';
import 'package:igclone/pages/SearchPage/Searchpage.dart';
import 'package:igclone/pages/homepage/Hompage.dart';
import 'package:igclone/pages/ownerpage/Ownerpage.dart';

class Likepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text("Activity" , style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),),
            ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left:12),
                  height: 20,
                  child: Text("This Month",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ],),

SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left:8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Colors.yellow,  ]),),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic1.jpg"),
                            fit: BoxFit.cover,)),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("betelihem106" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" liked Your video.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 1w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("image_asset/post/post1.jpg"),
                        fit: BoxFit.cover),
                      ),
                    ),
                ],),
                
SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left:8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Colors.yellow,  ]),),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic1.jpg"),
                            fit: BoxFit.cover,)),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("betelihem106" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" liked Your Photo.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 1w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("image_asset/post/post2.jpg"),
                        fit: BoxFit.cover),
                      ),
                    ),
                  ],),

SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left:8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Colors.yellow,  ]),),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic1.jpg"),
                            fit: BoxFit.cover,)),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("betelihem106" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" liked Your Photo.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 1w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("image_asset/post/post3.jpg"),
                        fit: BoxFit.cover),
                      ),
                    ),
                  ],),

SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic2.jpg"),
                            fit: BoxFit.cover,)),),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("Mahi" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" Started Following You.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 4w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: (){},
                       style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                      child: Text("Following", style: TextStyle(color: Colors.black),)),
                    ),      
                  ],),

SizedBox(height: 20,),

          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black12)
              )),
          ),

SizedBox(height: 10,),

    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left:12),
                  height: 20,
                  child: Text("Earlier",style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ],),
SizedBox(height: 8),

        SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic3.jpg"),
                            fit: BoxFit.cover,)),),
                      Container(
                        margin: EdgeInsets.only(top: 5, left: 10),
                        child: Text("luna bereket, one of your contact,\n is on instagram. would you like \n to follow them " ,
                         style: TextStyle(fontSize: 14.5),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 2w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Follow")),
                    ),      
                  ],),

SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic3.jpg"),
                            fit: BoxFit.cover,)),),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("jjrqz" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" Started Following You.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 2w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Follow")),
                    ),      
                  ],),

SizedBox(height: 8,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic2.jpg"),
                            fit: BoxFit.cover,)),),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("John15" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" Started Following You.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 2w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                     margin: EdgeInsets.only(right: 8),
                    child: ElevatedButton(
                      onPressed: (){}, 
                      child: Text("Follow")),
                  ),      
                  ],),

SizedBox(height: 10,),

         Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left:8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Colors.yellow,  ]),),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/stories/pic3.jpg"),
                            fit: BoxFit.cover,)),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("_official" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" liked Your video.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 1w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("image_asset/post/post4.jpg"),
                        fit: BoxFit.cover),
                      ),
                    ),
                ],),

SizedBox(height: 10),

         Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.only(left:8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.red,
                            Colors.red,
                            Colors.yellow,  ]),),
                      child: Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2 , color: Colors.white),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("image_asset/post/post5.jpg"),
                            fit: BoxFit.cover,)),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18, left: 10),
                        child: Text("User001" , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ),
                      Container(
                         margin: EdgeInsets.only(top: 18),
                        child: Text(" liked Your video.", style: TextStyle(fontSize: 15),),
                          ),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        child: Text(" 1w" ,style: TextStyle(color: Colors.grey), )),
                        
                        ],),
                  Container(
                    height: 50,
                    width: 40,
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("image_asset/post/post1.jpg"),
                        fit: BoxFit.cover),
                      ),
                    ),
                ],),

SizedBox(height: 20,),

                


          ],),
      ),

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
              icon: Icon(Icons.favorite_rounded, size: 28), 
              onPressed: (){}),
            IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 28), 
              onPressed: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage(),))),
          ],
        ),
      ),
      
      
    );
  }
}