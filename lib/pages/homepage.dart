import 'package:express_staff/model/pagedata.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndexInTabBar = 0;

  final Map<int, Widget> titleAppbar = const <int, Widget>{
    0: Text(
      "មិនទាន់ទទួល",
      style: TextStyle(fontSize: 16),
    ),
    1: Text("បានទទួល", style: TextStyle(fontSize: 16)),
    2: Text("ទាំងអស់", style: TextStyle(fontSize: 16))
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            leading: CupertinoButton(
              child: Icon(CupertinoIcons.back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            middle: Text("H2E Express"),
            trailing: CupertinoButton(
              child: Icon(CupertinoIcons.bell_solid),
              onPressed: () {},
            ),
            largeTitle: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CupertinoSlidingSegmentedControl(
                  groupValue: currentIndexInTabBar,
                  onValueChanged: (indexchange) {
                    setState(() {
                      currentIndexInTabBar = indexchange;
                      print("currentIndexInTabBar ${currentIndexInTabBar}");
                    });
                  },
                  children: titleAppbar,
                  thumbColor: CupertinoColors.white,
                  backgroundColor: Color(0xff8e8e93).withOpacity(0.3)),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: size.height,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndexInTabBar = index;
                    print("pageview index ${index}");
                    print("currentIndexInTabBar ${currentIndexInTabBar}");
                  });
                },
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                    pages[currentIndexInTabBar]
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}


