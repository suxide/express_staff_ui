import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  final dynamic scrollController;

  const OrderList({Key key, this.scrollController}) : super(key: key);
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return buildCupertinoPageScaffold(size);
  }

  CupertinoPageScaffold buildCupertinoPageScaffold(Size size) {
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Container(
          width: size.width,
          height: size.height,
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            controller: widget.scrollController,
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.19,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/ancha.jpg'))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            width: size.width,
                            height: size.height * 0.19 / 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(13),
                                  bottomRight: Radius.circular(13)),
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: size.height * 0.19,
                        decoration: BoxDecoration(
//                            border: Border.all(
//                              width: 3,
//                              color: Color(0XFF00695C),
//                            ),
                            borderRadius: BorderRadius.circular(13.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    CupertinoIcons.phone_solid,
                                    size: 30,
                                    color: CupertinoColors.white,
                                  ),
                                ),
                                Text(
                                  "087 765 654",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Text(
                                  "ចម្ងាយ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "1គីឡូ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.activeBlue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    CupertinoIcons.car,
                                    size: 30,
                                    color: CupertinoColors.activeBlue,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    CupertinoIcons.location_solid,
                                    size: 30,
                                    color: CupertinoColors.white,
                                  ),
                                ),
                                Text(
                                  "មីកន្ដាំងឆ្ងាញ់បាត់ដំបង,Street 115,Krong Battamabang",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: CupertinoColors.white),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        border: Border.all(
                                          width: 1,
                                          color: CupertinoColors.activeBlue,
                                        ),
                                      ),
                                      child: RawMaterialButton(
                                        onPressed: () {},
                                        child: Text(
                                          "បញ្ជីការកម៉្មង់",
                                          style: TextStyle(
                                              color: CupertinoColors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: CupertinoColors.activeBlue,
                                    ),
                                    child: RawMaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "ទទួល",
                                        style: TextStyle(
                                            color: CupertinoColors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              );
            },
          ),
        ));
  }

//  SliverToBoxAdapter buildOrderList(Size size) {
//    return SliverToBoxAdapter(
//      child: Container(
//        width: size.width,
//        height: size.height,
//        child: ListView.builder(
//          scrollDirection: Axis.vertical,
//          itemCount: 4,
//          itemBuilder: (BuildContext context, int index) {
//            return Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Container(
//                  height: size.height * 0.19,
//                  decoration: BoxDecoration(
//                      border: Border.all(
//                        width: 3,
//                        color: Color(0XFF00695C),
//                      ),
//                      borderRadius: BorderRadius.circular(13.0)),
//                  child: Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Icon(
//                              CupertinoIcons.phone_solid,
//                              size: 30,
//                              color: CupertinoColors.black,
//                            ),
//                          ),
//                          Text("087 765 654"),
//                          SizedBox(
//                            width: 80,
//                          ),
//                          Text(
//                            "ចម្ងាយ",
//                          ),
//                          SizedBox(
//                            width: 10,
//                          ),
//                          Text(
//                            "1គីឡូ",
//                            style: TextStyle(
//                                color: CupertinoColors.activeBlue,
//                                ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(10.0),
//                            child: Icon(
//                              CupertinoIcons.car,
//                              size: 30,
//                              color: CupertinoColors.black,
//                            ),
//                          ),
//                        ],
//                      ),
//                      Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: Icon(
//                              CupertinoIcons.location_solid,
//                              size: 30,
//                              color: CupertinoColors.black,
//                            ),
//                          ),
//                          Text(
//                            "មីកន្ដាំងឆ្ងាញ់បាត់ដំបង,Street 115,Krong Battamabang",
//                            style: TextStyle(fontSize: 14.0),
//                          )
//                        ],
//                      ),
//                      Row(
//                        children: <Widget>[
//                          Padding(
//                            padding: const EdgeInsets.all(10.0),
//                            child: Container(
//                              width: 100,
//                              height: 40,
//                              decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50.0),
//                                border: Border.all(
//                                  width: 1,
//                                  color: CupertinoColors.activeBlue,
//                                ),
//                              ),
//                              child: Center(
//                                  child: Text(
//                                "បញ្ជីការកម៉្មង់",
//                                style: TextStyle(
//                                    color: CupertinoColors.activeBlue),
//                              )),
//                            ),
//                          ),
//                          SizedBox(
//                            width: 5,
//                          ),
//                          Container(
//                            width: 100,
//                            height: 40,
//                            decoration: BoxDecoration(
//                                borderRadius: BorderRadius.circular(50.0),
//                                color: CupertinoColors.activeBlue,
//                               ),
//                            child: Center(
//                                child: Text(
//                              "ទទួល",
//                              style: TextStyle(color: CupertinoColors.white),
//                            )),
//                          ),
//                        ],
//                      )
//                    ],
//                  )),
//            );
//          },
//        ),
//      ),
//    );
//  }
}
