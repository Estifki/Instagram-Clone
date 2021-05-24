import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:igclone/models/stories.dart';
import 'package:igclone/pages/Detailspage/detailspage.dart';


class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  var posts = [
    {

    },
    {
      "Name": "User 1",
      "Picture": "image_asset/stories/pic1.jpg",
      "Postpic": "image_asset/post/post1.jpg",
      "Post": 22,
      "Follower": 245,
      "Following": 54,
    },
    {
      "Name": "User 2",
      "Picture": "image_asset/stories/pic2.jpg",
      "Postpic": "image_asset/post/post2.jpg",
      "Post": 40,
      "Follower": 45,
      "Following": 154,
    },
    {
      "Name": "User 3",
      "Picture": "image_asset/stories/pic3.jpg",
      "Postpic": "image_asset/post/post3.jpg",
      "Post": 200,
      "Follower": 1025,
      "Following": 20,
    },
    {
      "Name": "User 4",
      "Picture": "image_asset/stories/pic1.jpg",
      "Postpic": "image_asset/post/post4.jpg",
      "Post": 400,
      "Follower": 604,
      "Following": 1002,
    },
    {
      "Name": "User 5",
      "Picture": "image_asset/stories/pic2.jpg",
      "Postpic": "image_asset/post/post5.jpg",
      "Post": 22,
      "Follower": 245,
      "Following": 54,
    },
  ];









  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: posts.length,
      itemBuilder: (context, index) => index == 0 ? Container(
                    height: 91,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              child: Stories(),
                                  ),),
                                ],),
                              ) 
                          : Container(
                            //color: Colors.red,
                            height: 450,
                            child: Postsingleinput(
                              username: posts[index]["Name"],
                              userPic: posts[index]["Picture"],
                              postpic: posts[index]["Postpic"],
                              post: posts[index]["Post"],
                              follower: posts[index]["Follower"],
                              following: posts[index]["Following"],
                            ),
                          ),
      
    );
  }
}




class Postsingleinput extends StatefulWidget {
  final username;
  final userPic;
  final postpic;
  final post;
  final follower;
  final following;


  Postsingleinput({
    this.username,
    this.userPic, 
    this.postpic,
    this.post,
    this.follower,
    this.following,
    
    });


  @override
  _PostsingleinputState createState() => _PostsingleinputState();
}

class _PostsingleinputState extends State<Postsingleinput> {

    bool _isclicked = false;

    void _liked () {
      setState(() {
        if(_isclicked){
          _isclicked = false;       
      }else{
          _isclicked = true;
        }    
      });
    }





  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
        margin: EdgeInsets.only(top: 10),
        height: 450,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => Navigator.of(context).
          push(MaterialPageRoute (builder: (context) =>
          DetailsPage(
            name: widget.username,
            picture: widget.userPic,
            post: widget.post,
            follower: widget.follower,
            following: widget.following,                     

                      ),)),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("${widget.userPic}"),
                  fit: BoxFit.cover, )),                 
                          ),
      Container(
        height: 25,
        padding: EdgeInsets.only(left: 5),
        alignment: Alignment.center,
          child: Text(" ${widget.username} "),
                          ),
                      ],),
                    ),                
    Container(
      margin: EdgeInsets.only(right: 3),
      child: IconButton(
        onPressed: (){
        },
        icon: Icon(Icons.more_horiz),
                      ),
                    ),
                  ],),

      SizedBox(height: 3),

          InkWell(
            onDoubleTap: _liked,
            child: Container(
    height: 250,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("${widget.postpic}"),
        fit: BoxFit.cover,)),
                        ),
          ),

      //SizedBox(height: 3),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
    Row(
      children: [
        Container(
          width: 40,
          child: IconButton(
            onPressed: _liked,
                icon: ( _isclicked ? Icon(Icons.favorite_rounded, color: Colors.red, size: 22,) 
                  : Icon(Icons.favorite_border)),)
                                      ),
        Container(
          margin: EdgeInsets.only(bottom: 2),
          child: SvgPicture.asset
          ("image_asset/svg/comment.svg", height: 20),),
        Container(
          margin: EdgeInsets.only(bottom: 2, left: 11),
          child: SvgPicture.asset
          ("image_asset/svg/send.svg" , height: 20 ),
          ),
                ],),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.bookmark_outline),),
              ],),

      //SizedBox(height: 3),

        Container(
          margin: EdgeInsets.only(left:10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    Row(
      children: [
        Text("Liked by " , style: TextStyle(color: Colors.grey[800], fontSize: 12.5)),
        Text("Coding_city " , style: TextStyle(color: Colors.black, fontSize: 13 ,fontWeight: FontWeight.w500)),
        Text("and " , style: TextStyle(color: Colors.grey[800], fontSize: 13)),
        Text("others " , style: TextStyle(color: Colors.black, fontSize: 13 ,fontWeight: FontWeight.w500)),
                  ],),

      SizedBox(height: 5),

    Row(
      children: [
        Container(
          child: Text("${widget.username}" , style: TextStyle(fontWeight: FontWeight.w500),),
                ),
        Container(
          child: Text(" Travel with us" , style: TextStyle(fontSize: 13)),
                        ),
                    ],),
      SizedBox(height: 4),

        Text("View all comments", style: TextStyle(color: Colors.grey[600], fontSize: 13),),

      SizedBox(height: 12),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 23,
              width: 23,
                decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("${widget.userPic}"),
                  fit: BoxFit.cover, ),),
                              ),
            InkWell(
              onTap: (){},
              splashColor: Colors.transparent,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 30/100,
                  child: Text("Add a comment..." , style: TextStyle(color: Colors.grey[500]),),
                                    ),
                                  ),
                              ],),
            Container(  
              margin: EdgeInsets.only(right: 10),                      
              child: Row(
                children:[
                  Icon(Icons.favorite_rounded, color: Colors.red, size: 18,),
                  //IconButton(icon: SvgPicture.asset("image_asset/svg/hands.svg" , width: 18 , height: 20 ,), onPressed: (){}),
                  //Icon(Icons.favorite_border_outlined , color: Colors.red,),
                          ]),
            ),
        
                          ],),
    
        

            ],),

          ),


      ],),     
    
        );
  }
}