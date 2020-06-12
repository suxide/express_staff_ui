import 'package:flutter/cupertino.dart';

class OrderListButton extends StatefulWidget {
  const OrderListButton({
    Key key,
  }) : super(key: key);

  @override
  _OrderListButtonState createState() => _OrderListButtonState();
}

class _OrderListButtonState extends State<OrderListButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoButton(
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(
                width: 2,
                color: CupertinoColors.activeBlue),
            borderRadius: BorderRadius.circular(16.0)),
        child: Center(
          child: Text(
            "បញ្ជីការកម៉្មង់",
            style: TextStyle(fontSize: 17.0),
          ),
        ),
      ),
      onPressed: () {
        showCupertinoModalPopup(
            builder: (BuildContext context) {
              return CupertinoActionSheet(
                title: Text(
                  'បញ្ជីការកម៉្មង់',
                  style: TextStyle(fontSize: 25),
                ),
                message: Container(
                  height: size.height * 0.7,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Purple sweet potato back pearl",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .black),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "M",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "*1",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Purple sweet potato back pearl",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .black),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "M",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "*1",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Purple sweet potato back pearl",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .black),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Text(
                            "M",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "*1",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "សរុប",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .black),
                          ),
                          SizedBox(
                            width: 205,
                          ),
                          Text(
                            "\$11.00",
                            style: TextStyle(
                                fontSize: 16.0,
                                color: CupertinoColors
                                    .activeBlue,
                                fontWeight:
                                FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.5,
                      ),
                      CupertinoButton(
                        color: CupertinoColors.activeBlue,
                        onPressed: () {},
                        child: Text("ទទួល"),
                      )
                    ],
                  ),
                ),
                cancelButton: CupertinoActionSheetAction(
                  isDefaultAction: true,
                  isDestructiveAction: true,
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              );
            },
            context: context);
      },
    );
  }
}
