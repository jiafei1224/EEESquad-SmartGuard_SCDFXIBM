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
        title: Text(' SmartGuard',style: TextStyle(fontSize: 30,
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
        height: 310,

        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/smartguard.PNG')
          ),
        ),
      ),
        Container(
          padding:EdgeInsets.all(5.0),
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
              padding:EdgeInsets.all(5.0),
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
                icon: Icon(Icons. label_important,color: Colors.red,size: 35,),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),

            ),
            Container(
              color: Colors.red[400],
              padding:EdgeInsets.all(0.2),
              child: FlatButton.icon(
                label: Container(

                  child: Text('Sign up with SingPass',style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
                icon: Icon(Icons. people_outline,color: Colors.white,),
                onPressed: (){},
              ),

            ),


            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text(
                      '         Don\'t have an account ?',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                      width: 10,
                  ),
                  Text(
                      '',
                      style: TextStyle(
                      color: Color(0xfff79c4f),
                      fontSize: 13,
                      fontWeight: FontWeight.w600),

                )
            ],
          ),
        ),
      ],
      ),


    );
  }
}

