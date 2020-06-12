import 'package:flutter/cupertino.dart';

class OrderListAndRecieve extends StatefulWidget {
  @override
  _OrderListAndRecieveState createState() => _OrderListAndRecieveState();
}

class _OrderListAndRecieveState extends State<OrderListAndRecieve> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      child: Container(
        width: size.width,
        height: size.height,
      ),
    );
  }
}
