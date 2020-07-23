import 'package:express_staff/model/customClipper.dart';
import 'package:express_staff/model/pagedata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountLog extends StatefulWidget {
  const AccountLog({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _AccountLogState createState() => _AccountLogState();
}

class _AccountLogState extends State<AccountLog> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              clipper: CustomShap(),
              child: Container(
                width: size.width,
                height: size.height * 0.25,
                color: CupertinoColors.activeOrange,
              ),
            ),
            Positioned(
              top: 100,
              left: 115,
              child: Container(
                width: size.width * 0.3,
                height: size.height * 0.14,
                decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 5),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"))),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(
            left: 140,
          ),
          child: Column(
            children: <Widget>[
              Text(
                "Sam JM",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "អ្នកដឹកជញ្ចូន",
                style: TextStyle(
                    fontSize: 16, color: CupertinoColors.inactiveGray),
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.68,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (_, index) {
                return ListTile(
                  onTap: () {},
                  leading: menuIcons[index].Iconnames,
                  title: Text(menus[index]),
                );
              }),
        )
      ],
    );
  }
}
