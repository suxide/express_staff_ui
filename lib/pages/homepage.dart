import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int theriGroupVakue = 0;
  final Map<int, Widget> logoWidgets = const<int,Widget>{

    0:Text("មិនទាន់ទទួល",style: TextStyle(fontSize: 16),),
    1:Text("បានទទួល",style: TextStyle(fontSize: 16)),
    2:Text("ទាំងអស់",style: TextStyle(fontSize: 16))

  };
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 46.0,
            leading: IconButton(
              icon: Icon(Icons.menu,color: Colors.black,),
              onPressed: () {
                _scaffoldKey.currentState.openDrawer();
              },
            ),
            title: Text(
              "H2E Express",
              style: TextStyle(fontSize: 30.0, color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,color: Colors.black,
                  size: 28,
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 414,
                decoration: BoxDecoration(
                  color: Color(0xfff3f5f7),
                  borderRadius: BorderRadius.circular(6.0)
                ),
                child: CupertinoSlidingSegmentedControl(
                  groupValue:theriGroupVakue,
                  onValueChanged: (changeFromGroupValue){
                    setState(() {
                      theriGroupVakue =changeFromGroupValue;
                    });
                  },
                  children: logoWidgets,
                  thumbColor: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
