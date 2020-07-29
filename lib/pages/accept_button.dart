import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AcceptButton extends StatefulWidget {
  const AcceptButton({
    Key key,
  }) : super(key: key);

  @override
  _AcceptButtonState createState() => _AcceptButtonState();
}

class _AcceptButtonState extends State<AcceptButton> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      BorderRadius.circular(50.0),
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color:
          CupertinoColors.activeBlue,
          borderRadius:
          BorderRadius.circular(50.0),
        ),
        child: RawMaterialButton(
          onPressed: () {  },
          child: Text(
            "ទទួល",
            style: TextStyle(
                color: CupertinoColors
                    .white),
          ),
        ),
      ),
    );
  }
}