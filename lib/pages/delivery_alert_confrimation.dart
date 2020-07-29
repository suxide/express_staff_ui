import 'package:express_staff/model/pagedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'accept_button.dart';
import 'order_list_button.dart';

class MapDelivery extends StatefulWidget {
  @override
  _MapDeliveryState createState() => _MapDeliveryState();
}

class _MapDeliveryState extends State<MapDelivery> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              "assets/images/GoogleMapTA.jpg",
              fit: BoxFit.cover,
            ),
            buildMaterialApp(),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
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
                            width: 100,
                            height: 110,
                            decoration: BoxDecoration(
                                color: CupertinoColors.inactiveGray,
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
                                  numberphones[index],
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
                                  distance[index],
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
                                  location[index],
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: CupertinoColors.inactiveGray),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                OrderListButton(),
                                SizedBox(
                                  width: 15,
                                ),
                                AcceptButton()
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.grey.withOpacity(0.3),
          elevation: 0.0,
          title: Text(
            "H2E",
            style: TextStyle(color: CupertinoColors.activeBlue),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
      ),
    );
  }
}
