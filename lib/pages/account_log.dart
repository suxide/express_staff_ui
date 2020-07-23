import 'package:express_staff/pages/login.dart';
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

class _AccountLogState extends State<AccountLog> {
  Future<void> _handleClickMe() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("តើអ្នកចង់ចាកចេញមែនទេ"),
          content: Text(
              'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('ចាកចេញ'),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (_) => LoginPage(), fullscreenDialog: true));
              },
            ),
            CupertinoDialogAction(
              child: Text('មិនចាកចេញ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 80, left: 110),
          child: Column(
            children: <Widget>[
              Container(
                width: size.width * 0.3,
                height: size.height * 0.14,
                decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.white, width: 5),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sam JM",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "អ្នកដឹកជញ្ចូន",
                style: TextStyle(
                    fontSize: 16, color: CupertinoColors.inactiveGray),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Card(
          child: ListTile(
            onTap: () {
              _handleClickMe();
            },
            leading: Icon(CupertinoIcons.share_up),
            title: Text("ចាកចេញ"),
          ),
        )
      ],
    );
  }
}
