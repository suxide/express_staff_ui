import 'package:flutter/cupertino.dart';

class RecieveOrder extends StatefulWidget {
  @override
  _RecieveOrderState createState() => _RecieveOrderState();
}

class _RecieveOrderState extends State<RecieveOrder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeGreen,
      child: Container(
        width: size.width,
        height: size.height,
      ),
    );
  }
}
