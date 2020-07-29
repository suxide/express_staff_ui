import 'package:express_staff/model/pagedata.dart';
import 'package:express_staff/pages/accept_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_list_button.dart';
import 'order_recieve_button.dart';

class NotificationAlert extends StatefulWidget {
  const NotificationAlert({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _NotificationAlertState createState() => _NotificationAlertState();
}

class _NotificationAlertState extends State<NotificationAlert> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: widget.size.height * 0.3,
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 3,
                      color: CupertinoColors.black.withOpacity(0.5))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/profile.jpg"))),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Li Min Hoo"),
                            Text(
                              numberphones[index],
                              style: TextStyle(
                                  color: CupertinoColors.activeBlue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          width: 110,
                          height: 50,
                          decoration: BoxDecoration(
                              color: CupertinoColors.activeBlue,
                              borderRadius: BorderRadius.circular(40.0)),
                          child: CupertinoButton(
                            onPressed: () {},
                            child: Icon(
                              CupertinoIcons.phone_solid,
                              color: CupertinoColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          CupertinoButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              CupertinoIcons.clear_circled_solid,
                              color: CupertinoColors.black,
                            ),
                          )
                        ])
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: CupertinoColors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          CupertinoIcons.location_solid,
                          color: CupertinoColors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        location[index],
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: CupertinoColors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          CupertinoIcons.car,
                          color: CupertinoColors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "ចម្ងាយ",
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        distance[index],
                        style: TextStyle(color: CupertinoColors.activeBlue),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: <Widget>[
                      OrderListButton(),
                      SizedBox(width: 15,),
                      AcceptButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
