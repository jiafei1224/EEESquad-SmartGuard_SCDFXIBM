import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




class Helpsg extends StatefulWidget {
  @override
  _HelpsgState createState() => _HelpsgState();
}


class _HelpsgState extends State<Helpsg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DemoPage(),
    );
  }
}


class DemoPage extends StatelessWidget {
  launchURL1() {
    launch('https://www.scdf.gov.sg/');
  }
  launchURL2() {
    launch('https://www.scdf.gov.sg/home/contact-info');
  }
  launchURL3() {
    launch('http://www.weather.gov.sg/weather-rain-area-50km');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(' SmartGuard',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,

      ),
        body: SingleChildScrollView(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 140,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/ss.jpg')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/emergy.jpg')
                  ),
                ),
              ),


              Container(
                color: Colors.red[500],
                padding:EdgeInsets.all(9.5),
                child: FlatButton.icon(
                  label: Container(

                    child: Text('SCDF',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  icon: Icon(Icons.people,color: Colors.white,),
                  onPressed: launchURL1,
                ),

              ),
              Container(
                color: Colors.red[400],
                padding:EdgeInsets.all(9.5),
                child: FlatButton.icon(
                  label: Container(

                    child: Text('Weather Forecast',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  icon: Icon(Icons.cloud_circle,color: Colors.white,),
                  onPressed: launchURL3,
                ),

              ),
              Container(
                color: Colors.red[300],
                padding:EdgeInsets.all(9.5),
                child: FlatButton.icon(
                  label: Container(

                    child: Text('Contact us',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  icon: Icon(Icons.call_end ,color: Colors.white,),
                  onPressed: launchURL2,
                ),

              ),


            ]
        )
    ),

    );
  }
}


