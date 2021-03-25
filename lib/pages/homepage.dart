import 'package:express_staff/pages/account_log.dart';
import 'package:express_staff/pages/order_list.dart';
import 'package:express_staff/pages/recieve_order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'order_listANDrecieve_order.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int currentIndexInTabBar = 0;
  AnimationController animationController;
  Animation animation;
  ScrollController scrollController = ScrollController();
  List<Widget> pages = [];

  @override
  void initState() {
    animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInQuad)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
    pages = [
      OrderList(
        scrollController: scrollController,
      ),
      RecieveOrder(),
      OrderListAndRecieve()
    ];
  }

  final Map<int, Widget> titleNavigationBar = {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: <Widget>[
              Transform(
                alignment: FractionalOffset.center,
                transform:
                    Matrix4.translationValues(0.0 * animation.value, 0.0, 0.0)
                      ..scale(1.0 - (0.1 * animation.value)),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    color: Colors.white,
                    child: AccountLog(
                      size: size,
                    ),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(
                    0.0 + (size.width * 0.8 * (animation.value)), 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                      color: CupertinoColors.white,
                      border: Border.all(
                          width: 2,
                          color: CupertinoColors.black.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: buildCustomScrollView(),
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.translationValues(
                    size.width * 0.02 * animation.value, 0.0, 0.0),
                child: SafeArea(
                  child: CupertinoButton(
                    onPressed: () {
                      animation.value == 0
                          ? animationController.forward(from: 0.1)
                          : animationController.reverse(from: 1.0);
                    },
                    child: AnimatedIcon(
                      progress: animation,
                      icon: AnimatedIcons.menu_close,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  CustomScrollView buildCustomScrollView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: CupertinoColors.white,
          elevation: 0.0,
          title: Text(
            "H2E",
            style: TextStyle(color: CupertinoColors.activeBlue),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active,
                color: CupertinoColors.activeBlue,
              ),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: CupertinoSlidingSegmentedControl(
            onValueChanged: (value) {
              setState(() {
                currentIndexInTabBar = value;
                print("tabbar index $currentIndexInTabBar");
              });
            },
            padding: EdgeInsets.symmetric(horizontal: 10),
            groupValue: currentIndexInTabBar,
            children: titleNavigationBar,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        SliverFillRemaining(
          child: PageView.builder(
              itemCount: 3,
              onPageChanged: (index) {
                setState(() {
                  currentIndexInTabBar = index;
                  print("tabbar index $currentIndexInTabBar");
                  print("page view index: $index");
                });
              },
              itemBuilder: (_, index) {
                return pages[currentIndexInTabBar];
              }),
        )
      ],
    );
  }
}
