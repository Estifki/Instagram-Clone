import 'package:flutter/material.dart';

class OwenerStories extends StatefulWidget {
  @override
  _OwenerStoriesState createState() => _OwenerStoriesState();
}

class _OwenerStoriesState extends State<OwenerStories> {

  var stories = [
    {
      "Name": "My story 1  ",
      "Picture": "image_asset/stories/pic1.jpg",
    },
    {
      "Name": "My story 2 ",
      "Picture": "image_asset/stories/pic2.jpg",
    },
    {
      "Name": "My story 3 ",
      "Picture": "image_asset/stories/pic3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) {
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





