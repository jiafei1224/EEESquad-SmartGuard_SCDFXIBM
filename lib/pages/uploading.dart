
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Uploadit extends StatefulWidget {
  @override
  _UploaditState createState() => _UploaditState();
}

class _UploaditState extends State<Uploadit> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final myController3 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController2.dispose();
    myController3.dispose();
    super.dispose();
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
      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Container(
              color: Colors.red[500],
              padding:EdgeInsets.all(20),
              child: Text('What happened?',style: TextStyle(fontSize: 25,color: Colors.white),),
            ),

            Container(
              padding:EdgeInsets.all(20),
              child: TextField(
                controller: myController,
              ),
            ),
            Container(
              color: Colors.red[500],
              padding:EdgeInsets.all(20),
              child: Text('Where it happened?',style: TextStyle(fontSize: 25,color: Colors.white),),
            ),
            Container(
              padding:EdgeInsets.all(20),
              child: TextField(
                controller: myController2,
              ),
            ),
            Container(
              color: Colors.red[500],
              padding:EdgeInsets.all(20),
              child: Text('When it happened?',style: TextStyle(fontSize: 25,color: Colors.white),),
            ),
            Container(
              padding:EdgeInsets.all(20),
              child: TextField(
                controller: myController3,
              ),
            ),

          Container(
            child:RaisedButton(
              child: Text('Submit Report'),
              onPressed: () {
                createRecord();
              },
            ),
          ),
            Container(
              color: Colors.red[400],
              padding:EdgeInsets.all(0.2),
              child: FlatButton.icon(
                label: Container(

                  child: Text('Upload a picture',style: TextStyle(fontSize: 16,color: Colors.white),),
                ),
                icon: Icon(Icons. image,color: Colors.white,),
                onPressed: (){Navigator.pushNamed(context, '/tensorlite');},
              ),

            ),


          ]

      ),


    );
}
  void createRecord() async {
    final databaseReference = Firestore.instance;

    await databaseReference.collection("prediction")
        .document("1")
        .setData({
      'Condition': myController2.text,
      'Prediction': myController.text,
      'Time': myController3.text
    });

    DocumentReference ref = await databaseReference.collection("prediction")
        .add({
      'Condition': myController2.text,
      'Prediction': myController.text,
      'Time': myController3.text
    });
    print(ref.documentID);
  }

  }



