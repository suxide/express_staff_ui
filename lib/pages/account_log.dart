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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width,
      height: widget.size.height,
      color: CupertinoColors.lightBackgroundGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 90, top: 80),
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CupertinoColors.activeBlue,
              ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 115),
            child: Text("វិចិត្រ ស្មោះស្មេហ៏"),
          ),
          SizedBox(height: 50,),
          Row(
            children: <Widget>[
              CupertinoButton(
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (_)=>LoginPage()));
                },
                child: Icon(CupertinoIcons.reply_all),
              ),
              SizedBox(
                width: 10,
              ),
              Text("ចាកចេញ")
            ],
          )
        ],
      ),
    );
  }
}
