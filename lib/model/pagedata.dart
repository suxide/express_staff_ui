import 'package:flutter/cupertino.dart';

class MenuIcon{
  final dynamic Iconnames;

  MenuIcon({this.Iconnames});
}

List<MenuIcon> menuIcons=[
  MenuIcon(Iconnames: Icon(CupertinoIcons.book_solid)),
  MenuIcon(Iconnames: Icon(CupertinoIcons.profile_circled)),
  MenuIcon(Iconnames: Icon(CupertinoIcons.gear_solid)),
  MenuIcon(Iconnames: Icon(CupertinoIcons.phone_solid)),
  MenuIcon(Iconnames: Icon(CupertinoIcons.share_up))
];

class Menus{
  final String titles;

  Menus({this.titles});
}

List<String> menus=[
  'About',
  'Profile',
  'Settings',
  'Support',
  'Logout',
];