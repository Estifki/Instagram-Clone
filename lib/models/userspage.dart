import 'package:flutter/material.dart';

class Ownerpic extends StatefulWidget {
  @override
  _OwnerpicState createState() => _OwnerpicState();
}

class _OwnerpicState extends State<Ownerpic> {

  var _piclist = [
    {
      
     "Pic": "image_asset/post/post2.jpg"
     

    },
    {
      
     "Pic": "image_asset/post/post3.jpg"
     

    },
    {
      
     "Pic": "image_asset/post/post4.jpg"
     

    },
    {
      
     "Pic": "image_asset/post/post6.jpg"
     

    },
    {
      
     "Pic": "image_asset/post/post5.jpg"
     

    },
    
    
    
  ];




  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      //physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      itemCount: _piclist.length,
      itemBuilder: (buildcontext , int index){
        return Singleinput(
          pic: _piclist[index]["Pic"],
        );
      }
      
    );
  }
}



class Singleinput extends StatefulWidget {
  final pic;

  Singleinput({this.pic});

  @override
  _SingleinputState createState() => _SingleinputState();
}

class _SingleinputState extends State<Singleinput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("${widget.pic}"),
          fit: BoxFit.cover,
        )
      ),
      
    );
  }
}