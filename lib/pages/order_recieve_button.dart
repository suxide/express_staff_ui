import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderRecieveButton extends StatefulWidget {
  const OrderRecieveButton({
    Key key,
  }) : super(key: key);

  @override
  _OrderRecieveButtonState createState() => _OrderRecieveButtonState();
}

class _OrderRecieveButtonState extends State<OrderRecieveButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
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
    );
  }
}