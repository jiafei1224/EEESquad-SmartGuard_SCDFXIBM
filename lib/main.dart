
import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/sign.dart';
import 'package:myapp/pages/helpsingapore.dart';
import 'package:myapp/pages/outputpage.dart';
import 'package:myapp/pages/Calling.dart';
import 'package:myapp/pages/connect.dart';
import 'package:myapp/pages/uploading.dart';
import 'package:myapp/pages/tensr.dart';



void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/sign': (context) => Sign(),
    '/helpsing': (context) => Helpsg(),
    '/out': (context) => Output(),
    '/call': (context) => Call(),
    '/upload' : (context) => Uploadit(),
    '/connectio': (context) => LoadDataFromFirestore(),
    '/tensorlite': (context) => Tensor(),





  },

));


