import 'dart:ui';

import 'package:express_staff/pages/order_list_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_recieve_button.dart';

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
                child: Container(
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 2, color: CupertinoColors.black)
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                color: CupertinoColors.inactiveGray,
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/anchar1.jpg"))),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "087 765 654",
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "ចម្ងាយ",
                                  style: TextStyle(
                                      color: CupertinoColors.inactiveGray),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "1គីឡូ",
                                  style: TextStyle(
                                      color: CupertinoColors.activeBlue),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "មីកន្ដាំងឆ្ងាញ់បាត់ដំបង,Street 115,\nKrong Battamabang",
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: CupertinoColors.inactiveGray),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                OrderListButton(),
                                SizedBox(
                                  width: 15,
                                ),
                                OrderRecieveButton()
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
              );
            },
          ),
        ));
  }
}
