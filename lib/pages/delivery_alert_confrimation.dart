import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_list.dart';

class DeliveryAlert extends StatefulWidget {
  @override
  _DeliveryAlertState createState() => _DeliveryAlertState();
}

class _DeliveryAlertState extends State<DeliveryAlert> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: Icon(CupertinoIcons.back),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (_) => OrderList(),
                    fullscreenDialog: true,
                  ));
            },
          ),
          middle: Text("H2E Express"),
          trailing: CupertinoButton(
            child: Icon(CupertinoIcons.bell_solid),
            onPressed: () {},
          ),
        ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Stack(
                children: <Widget>[
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/GoogleMapTA.jpg"))),
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(
                                  bottom: 30, left: 16, right: 16),
                              child: Container(
                                width: 382,
                                height: 185,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10,
                                          spreadRadius: -3,
                                          color: CupertinoColors.black
                                              .withOpacity(0.4))
                                    ],
                                    color: CupertinoColors.white,
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    //Order List Detail
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 16),
                                      child: Text(
                                        "097765658",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: CupertinoColors.activeBlue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            color: CupertinoColors.inactiveGray,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "មីកន្ដាំងឆ្ងាញ់បាត់ដំបង,Street 115,Krong Battamabang",
                                            style: TextStyle(fontSize: 14.0),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            "ចម្ងាយ",
                                            style: TextStyle(fontSize: 14.0),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "1គីឡូ",
                                            style: TextStyle(
                                                color:
                                                    CupertinoColors.activeBlue,
                                                fontSize: 14.0),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 20),
                                            child: Container(
                                                width: 120,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: CupertinoColors
                                                            .activeBlue)),
                                                child: Center(
                                                    child: Text(
                                                  "បញ្ជីការកម៉្មង់",
                                                ))),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                width: 120,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  color: CupertinoColors.activeBlue,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        16.0),
                                                   ),
                                                child: Center(
                                                    child: Text(
                                                      "ទទួល",style: TextStyle(color: CupertinoColors.white),
                                                    ))),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
