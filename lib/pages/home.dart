import 'package:flutter/material.dart';




class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Noted"),
    onPressed:  () {Navigator.pushNamed(context, '/home');},
  );
  Widget continueButton = FlatButton(
    child: Text("Find out more"),
    onPressed:  () { },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Emergency Announcement"),
    content: Text("There has been a reporting of a fire developing at Bishan street 12 blk 411. Please stay away!"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
class _HomeState extends State<Home> {
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


      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 25.0,
            margin: EdgeInsets.all(1),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/helplist');
              },
              padding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffbf360c), Color(0xffffab91)],

                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(28.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Emergency: Fire developing at Block 411 void deck!',style: TextStyle(fontSize: 12,color: Colors.white),),
                    ),
                    icon: Icon(Icons. add_alert,color: Colors.white,size: 15,),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                ),

              ),
            ),),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 290,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/scdf.jpg')
              ),
            ),
          ),


          Container(
            height: 52.0,
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/helplist');

              },
              padding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffb71c1c), Color(0xffef9a9a)],

                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(28.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 380.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Check for potential hazards',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.update,color: Colors.white,size: 25,),
                    onPressed: () {

                      Navigator.pushNamed(context, '/connectio');

                    },
                  ),
                ),
              ),
            ),),
          Container(
            height: 52.0,
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/helplist');

              },
              padding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffb71c1c), Color(0xffef9a9a)],

                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(28.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 280.0, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Report an incident.',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons. remove_red_eye,color: Colors.white,size: 25,),
                    onPressed: () {
                      Navigator.pushNamed(context, '/upload');
                    },
                  ),
                ),

              ),
            ),),
          Container(
            height: 52.0,
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/helplist');

              },
              padding: EdgeInsets.all(0.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Color(0xffb71c1c), Color(0xffef9a9a)],

                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(28.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 200, minHeight: 60.0),
                  alignment: Alignment.center,
                  child: FlatButton.icon(
                    label: Container(

                      child: Text('Call for help',style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                    icon: Icon(Icons.call,color: Colors.white,size: 25,),
                    onPressed: () {

                      Navigator.pushNamed(context, '/call');


                    },
                  ),
                ),
              ),
            ),),




        ],
      ),

//      body: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Text('Hello Word'),
//          FlatButton(
//            onPressed: () {},
//            color: Colors.amber,
//            child: Text('Click Me!')
//          ),
//          Container(
//            color: Colors.cyan,
//            padding:EdgeInsets.all(30.0),
//            child:Text('Insider')
//          ),
//
//        ],
//      ),
//      body: Padding(
//        padding:EdgeInsets.all(90.0),
//        child:Text('Hello'),
//      ),
//      body: Container(
//        padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
//        margin: EdgeInsets.all(30.0),
//        color: Colors.lightGreenAccent,
//        child: Text(' Hello '),
//      ),
//      body: Center(
////        child: IconButton(
////          onPressed: () {
////            print("YOU STILL SUCK");
////          },
////          icon: Icon(Icons.alternate_email),
////          color: Colors.amber,
////        )
////        child: RaisedButton.icon(
////          onPressed: () {},
////          icon: Icon(
////            Icons.contact_mail
////          ),
////          label: Text('mail me'),
////          color: Colors.orange,
////        ),
////        child: FlatButton(
////          onPressed: () {
////            print('You suck!');
////          },
////          child: Text('Click!'),
////          color: Colors.lightBlue,
////        ),
////        child: Icon(
////          Icons.airplanemode_active,
////          color: Colors.lightBlue,
////          size:50.0,
////
////        ),
////        child: Image(
////          image: AssetImage('assets/space1.jpg'),
////
////        )
////        child: Text(
////          ' We will win this!',
////          style: TextStyle(
////            fontSize: 20.0,
////            fontWeight: FontWeight.bold,
////            letterSpacing: 2.0,
////            color: Colors.green[700],
////            fontFamily: 'ChelseaMarkeet',
////
////
////          ),
////        ),
//      ),
//      floatingActionButton: FlatButton.icon(
//        onPressed: () {
//          Navigator.pushNamed(context, '/location');
//        },
//        icon: Icon(Icons.contact_mail),
//        label: Text('Check me out'),
//
//      ),
        floatingActionButton: FlatButton.icon(

          onPressed: () {
            Navigator.pushNamed(context, '/helpsing');
          },

          label: Text('',style: TextStyle(fontSize: 5,letterSpacing: 1.0,color: Colors.white,fontFamily: 'ChelseaMarkeet',)),
          icon: Icon(Icons.info,color: Colors.black,size: 40,),
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          shape: CircleBorder(),
        )

    );

  }
}
