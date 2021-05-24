import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:igclone/pages/Activitypage/Likepage.dart';
import 'package:igclone/pages/SearchPage/Imagelist.dart';
import 'package:igclone/pages/homepage/Hompage.dart';
import '../ownerpage/Ownerpage.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: ListView.builder(
      itemCount: 2,
      itemBuilder: (context , index) => index == 0 ? Container(
              height: 40,
              margin: EdgeInsets.only(top: 6, bottom: 8,left: 15, right: 15),
              child: Material(
                color: Colors.grey[200],                      
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7),
                  child: TextField(                              
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                  hintText: "Search ",  
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search ,size: 23 ,  color: Colors.grey[500],),
                          ),
                        ),
                      ),
                    ) : Container(
                      height: MediaQuery.of(context).size.height,
                      child: Staggeredgridview()),
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
              onPressed: () {}),
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


class Imagemodel extends StatelessWidget {
  final SearchImageList searchImageList;

  Imagemodel({this.searchImageList});
  
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
     // borderRadius: BorderRadius.circular(10),
      child: Image.asset(searchImageList.images , fit: BoxFit.cover,),
    );
  }
}



class Staggeredgridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      physics: BouncingScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
        itemCount: imagelist.length,
        itemBuilder: (context , index) => Imagemodel(
          searchImageList: imagelist[index], 
            ),
            staggeredTileBuilder: (index) => StaggeredTile.count(
              (index % 7 == 0) ? 2 : 1, (index % 7 == 0) ? 2 : 1),
    );
  }
}

/*


Column(
      children: [
        Container(
              height: 40,
              margin: EdgeInsets.only(top: 30, bottom: 8,left: 15, right: 15),
              child: Material(
                color: Colors.grey[200],                      
                elevation: 3.0,
                borderRadius: BorderRadius.circular(7),
                  child: TextField(                              
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                  hintText: "Search ",  
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search ,size: 23 ,  color: Colors.grey[500],),
                          ),
                        ),
                      ),
                    ),
            Expanded(
              child: Staggeredgridview()),
                   ],),
 */