import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: Text('  SmartGuard',style: TextStyle(fontSize: 30,
          fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/loading.gif')
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(

                    image: AssetImage('assets/title.PNG')
                ),
              ),
            ),

          ],
        ),




      floatingActionButton: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/location');
        },
        icon: Icon(Icons.play_arrow,color: Colors.white,size: 30,),
        color: Colors.black,

        label: Text('Start',style: TextStyle(fontSize: 19,letterSpacing: 2.0,color: Colors.white,fontFamily: 'ChelseaMarkeet',)),
      )


    );
  }
}
