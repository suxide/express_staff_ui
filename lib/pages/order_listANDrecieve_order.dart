import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderListAndRecieve extends StatefulWidget {
  final dynamic scrollController;

  const OrderListAndRecieve({Key key, this.scrollController}) : super(key: key);
  @override
  _OrderListAndRecieveState createState() => _OrderListAndRecieveState();
}

class _OrderListAndRecieveState extends State<OrderListAndRecieve> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                        border: Border.all(
                          width: 3,
                          color: Color(0XFF00695C),
                        ),
                        borderRadius: BorderRadius.circular(13.0)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 10),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/unnamed.png"))),
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
                                Text("1គីឡូ",style: TextStyle(color: CupertinoColors.activeBlue),)
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
                                ClipRRect(
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
                                        )),
                                    child: RawMaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "បញ្ជីការកម៉្មង់",
                                        style: TextStyle(
                                            color: CupertinoColors.activeBlue),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: CupertinoColors.activeBlue,
                                      borderRadius: BorderRadius.circular(50.0),
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
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              );
            },
          ),
        ));
  }
}
