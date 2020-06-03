import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/sign.dart';
import 'package:myapp/pages/helpsingapore.dart';
import 'package:myapp/pages/helplist.dart';
import 'package:myapp/pages/outputpage.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/sign': (context) => Sign(),
    '/helplist': (context) => Helplist(),
    '/helpsing': (context) => Helpsg(),
    '/out': (context) => Output(),



  },

));


