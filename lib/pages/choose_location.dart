import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(' Help Lah!',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        Container(
        width: MediaQuery.of(context).size.width,
        height: 330,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/logo.PNG')
          ),
        ),
      ),
        Container(
          child: TextField(
              obscureText: false,

              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "User Email",
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
        ),
        ),
            Container(
              child: TextField(
                obscureText: true,

                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40.0))),
              ),
            ),
            Container(
              color: Colors.white,
              padding:EdgeInsets.all(9.5),
              child: FlatButton.icon(
                label: Container(

                  child: Text('Login In',style: TextStyle(fontSize: 25,color: Colors.red),),
                ),
                icon: Icon(Icons. wifi_tethering,color: Colors.red,size: 35,),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),

            ),
        ],
      ),


        floatingActionButton: FlatButton.icon(
          onPressed: () {

          },
          icon: Icon(Icons.person_outline,color: Colors.red,size: 30,),
          color: Colors.white30,

          label: Text('Sign Up',style: TextStyle(fontSize: 15,letterSpacing: 0.5,color: Colors.red,)),
        )
    );
  }
}

