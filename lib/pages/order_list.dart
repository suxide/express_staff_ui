import 'package:flutter/cupertino.dart';
import 'order_list_button.dart';
import 'order_recieve_button.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      child: Container(
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          slivers: <Widget>[buildOrderList(size)],
        ),
      ),
    );
  }

  SliverToBoxAdapter buildOrderList(Size size) {
    return SliverToBoxAdapter(
      child: Container(
        width: size.width,
        height: size.height,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height*0.23,
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Order List Detail
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                      child: Text(
                        "097765658",
                        style: TextStyle(
                            fontSize: 18,
                            color: CupertinoColors.activeBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
                                color: CupertinoColors.activeBlue,
                                fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          OrderListButton(),
                          OrderRecieveButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}



