import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {

  var stories = [
    {
      "Name": "Highlight 1 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 2 ",
      "Picture": "image_asset/stories/pic2.jpg",
    },
    {
      "Name": "Highlight 3 ",
      "Picture": "image_asset/stories/pic3.jpg",
    },
    {
      "Name": "Highlight 4 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 5 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 6 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 7 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 8 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 9 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 10 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 11 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "Highlight 12 ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) 
      {
        return Singledatainpute(
          inputname: stories[index]["Name"],
          inputpic: stories[index]["Picture"],
        );
      }
      
    );
  }
}






class Singledatainpute extends StatefulWidget {

  final inputname;
  final inputpic;

  Singledatainpute({this.inputname,this.inputpic});

  @override
  _SingledatainputeState createState() => _SingledatainputeState();
}

class _SingledatainputeState extends State<Singledatainpute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.redAccent,
                Colors.yellowAccent, ],
                        ),),
        child: Container(
          margin: EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(width: 2.5, color: Colors.white),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("${widget.inputpic}"),
                fit: BoxFit.cover, )),
                    ),
                      ),
        
SizedBox(height: 3),

        Text("   ${widget.inputname}" , style: TextStyle(fontSize: 12.5),),
                      ],);
  }
}





