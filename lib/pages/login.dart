import 'package:express_staff/pages/homepage.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
        child: Container(
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: size.width,
                  height: 345,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/loginbg.png"))),
                ),
                Positioned(
                  top: 80,
                  left: 70,
                  child: Image.asset("assets/images/h2elogo.png"),
                )
              ],
            ),
            SizedBox(
              height: 28.9,
            ),
            Text(
              "សូមវាយបញ្ចូលឈ្មោះ និងលេខសម្ងាត់",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 354,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xfff3f5f7),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 0, left: 20),
                child: CupertinoTextField(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  placeholderStyle: TextStyle(color: CupertinoColors.black),
                  placeholder: "ឈ្មោះអ្នកប្រើប្រាស់",
                  decoration: BoxDecoration(
                      color: Color(0xffe8e8e8),
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 354,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xfff3f5f7),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 0, left: 20),
                child: CupertinoTextField(
                  placeholder: "លេខសម្ងាត់",
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  placeholderStyle: TextStyle(color: CupertinoColors.black),
                  obscureText: true,
                  decoration: BoxDecoration(
                      color: Color(0xffe8e8e8),
                      borderRadius: BorderRadius.circular(12.0)),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CupertinoButton(
              child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xff2387ec),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: Center(
                      child: Text(
                    "ចូល",
                    style:
                        TextStyle(fontSize: 16.0, color: CupertinoColors.white),
                  ))),
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (_)=>HomePage()));
              },
            ),
            SizedBox(
              height: 40,
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  CupertinoColors.activeBlue, BlendMode.modulate),
              child: Image.asset("assets/images/logo.png"),
            )
          ],
        ),
      ),
    ));
  }
}
