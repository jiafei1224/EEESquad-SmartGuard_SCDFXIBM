import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Callme(),
    );
  }
}

class Callme extends StatelessWidget {
  Callme({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text(' SmartGuard',style: TextStyle(fontSize: 30,
          fontFamily: 'ChelseaMarkeet'
      ),),
      centerTitle: true,

    ),
    body:SingleChildScrollView(

      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/fire.jpg')
            ),
          ),
        ),
      Container(color: Colors.red[500],
        child: FlatButton.icon(
          label: Container(


            child: Text('Emergency',style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          icon: Icon(Icons.call,color: Colors.white,size: 25,),
          onPressed: () => launch("tel://995"),
        ),),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/ambu.jpg')
            ),
          ),
        ),
        Container(color: Colors.orange,
            child: FlatButton.icon(
              label: Container(


                child: Text('Non-Emergency',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              icon: Icon(Icons.call,color: Colors.white,size: 25,),
              onPressed: () => launch("tel://1777"),
            ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/calls.jpg')
            ),
          ),
        ),
        Container(color: Colors.green,
          child: FlatButton.icon(
            label: Container(


              child: Text('General Reporting',style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            icon: Icon(Icons.call,color: Colors.white,size: 25,),
            onPressed: () => launch("tel://18002800000"),
          ),
        ),
      ]
      )
    ),
  );
}
