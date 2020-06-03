import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(' Help Lah!',style: TextStyle(fontSize: 30,
          fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/avc.gif')
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.grey[50],
              child: Text('The COVID 3-In-1 App',textAlign: TextAlign.center,style:
              TextStyle(fontSize: 25.0,
                  letterSpacing: 1.0,
                  color: Colors.red,
                  fontFamily: 'ChelseaMarkeet'
              ),),),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(

                    image: AssetImage('assets/aa.gif')
                ),
              ),
            ),
          ],
        ),




      floatingActionButton: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        icon: Icon(Icons.play_arrow,color: Colors.red,size: 30,),
        color: Colors.white30,

        label: Text('Start',style: TextStyle(fontSize: 19,letterSpacing: 2.0,color: Colors.red,fontFamily: 'ChelseaMarkeet',)),
      )


    );
  }
}
