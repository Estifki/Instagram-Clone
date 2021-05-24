import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:igclone/pages/Activitypage/Likepage.dart';
import 'package:igclone/pages/Homepage/Hompage.dart';
import 'package:igclone/pages/ownerpage/Ownerpage.dart';
import 'package:igclone/pages/SearchPage/Searchpage.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedindex = 0;
  List<Widget> _listOfWidgets = <Widget> [
    Homepage(),
    SearchPage(),
    Homepage(),
    Likepage(),
    ProfilePage(),

  ];

  // void _onbartap(int index){
  //   setState(() {
  //     _selectedindex = index;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _listOfWidgets.elementAt(_selectedindex),
       
      );
  }
}







 //     Expanded(
        //       child: Container(
        //         color: Colors.grey[300],
        //         width: MediaQuery.of(context).size.width * 100/100,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               IconButton(icon: Icon(Icons.home , size: 26,), onPressed: () => 
        //               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Hompage(),))
        //               ),  

        //               IconButton(icon: Icon(Icons.search , size: 26,), onPressed: ()=>
        //               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SearchPage(),))
        //               ),

        //               IconButton(icon: Icon(Icons.add , size: 26,), onPressed: (){}),

        //               IconButton(icon: Icon(Icons.favorite_border_outlined , size: 26,), onPressed: (){}),

        //               IconButton(icon: Icon(Icons.account_circle_outlined , size: 26,), onPressed: ()=>
        //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage(),))
        //               ),
        //             ],),
        //     ),
        // ),
          
        // bottomNavigationBar: Container(
        //   height: 45,
        //   color: Colors.grey[200],
        //   width: double.infinity,
        //  child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               IconButton(icon: Icon(Icons.home_rounded , size: 26,), onPressed: () => 
        //               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Hompage(),))
        //               ),  

        //               IconButton(icon: Icon(Icons.search , size: 26,), onPressed: ()=>
        //               Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SearchPage(),))
        //               ),

        //               IconButton(icon: Icon(Icons.add , size: 26,), onPressed: (){}),

        //               IconButton(icon: Icon(Icons.favorite_border_outlined , size: 26,), onPressed: (){}),

        //               IconButton(icon: Icon(Icons.account_circle_outlined , size: 26,), onPressed: ()=>
        //                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ProfilePage(),))
        //               ),
        //             ],),
        // ),














// Widget _bottomnavigator () {
//   int _pageindictor = 0;

//   List _bottomlist = [
//     _pageindictor == 0 ? Icon(Icons.home) : Icon(Icons.home_outlined), 
//     _pageindictor == 1 ? Icon(Icons.search) : Icon(Icons.search_outlined),
//     _pageindictor == 2 ? Icon(Icons.add) : Icon(Icons.add_outlined),
//     _pageindictor == 3 ? Icon(Icons.favorite_rounded) : Icon(Icons.favorite_outline),
//     _pageindictor == 4 ? Icon(Icons.person) : Icon(Icons.person_outline),

//   ];

//     _selected(index) {
//      setState(() {
//        _pageindictor = index;
//      });

//    }



//   return Container(
//     color: Colors.grey[300],  
//     width: double.infinity,
//     child: Padding(
//       padding: const EdgeInsets.only(left:20.0 , right: 20.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: List.generate(_bottomlist.length, (index){
//             return InkWell(
//               onTap: _selected(index),
//              child: IconButton(
//                onPressed: (){},
//                icon: _bottomlist[index],),
//                );
//             })         
        
//       ),
//     ),

//     );
//   }

