import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
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
                          image: AssetImage("assets/images/loginbg.png")),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 70,
                      child: Image.asset("assets/images/h2elogo.png")),
                ],
              ),
              SizedBox(height: 28.9,),
              Text("សូមវាយបញ្ចូលឈ្មោះ និងលេខសម្ងាត់",style: TextStyle(
                fontSize: 20.0,
              ),),
              SizedBox(height: 20,),
              Container(
                width: 354,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xfff3f5f7),
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  padding: EdgeInsets.only(bottom: 0,left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "ឈ្មោះអ្នកប្រើប្រាស់",
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: 354,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xfff3f5f7),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Container(
                  padding: EdgeInsets.only(bottom: 0,left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "លេខសម្ងាត់",
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ClipRRect(
                child: Container(
                  width: 180,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: RawMaterialButton(
                    elevation: 0.0,
                    onPressed: () {  },
                    child: Text("ចូល",style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
                child: Image.asset("assets/images/logo.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
