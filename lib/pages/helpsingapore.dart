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
    launch('https://play.google.com/store/apps/details?id=sg.gov.tech.bluetrace&hl=en_SG');
  }
  launchURL2() {
    launch('https://covidsitrep.moh.gov.sg/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(' Help Singapore!',style: TextStyle(fontSize: 30,
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
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/chart.PNG')
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/covidmap.jpg')
                  ),
                ),
              ),

              Container(
                color: Colors.red[400],
                padding:EdgeInsets.all(9.5),
                child: FlatButton.icon(
                  label: Container(

                    child: Text('Contact Tracing',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  icon: Icon(Icons.people,color: Colors.white,),
                  onPressed: launchURL1,
                ),

              ),
              Container(
                color: Colors.red[300],
                padding:EdgeInsets.all(9.5),
                child: FlatButton.icon(
                  label: Container(

                    child: Text('Covid19 Hotspot',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                  icon: Icon(Icons.insert_chart ,color: Colors.white,),
                  onPressed: launchURL2,
                ),

              ),


            ]
        )
    ),

    );
  }
}


