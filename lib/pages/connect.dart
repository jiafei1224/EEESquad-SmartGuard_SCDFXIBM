
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LoadDataFromFirestore extends StatefulWidget {
  @override
  _LoadDataFromFirestoreState createState() => _LoadDataFromFirestoreState();
}

class _LoadDataFromFirestoreState extends State<LoadDataFromFirestore> {
  @override
  void initState() {
    super.initState();
    getDriversList().then((results) {
      setState(() {
        querySnapshot = results;
      });
    });
  }


  QuerySnapshot querySnapshot;
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
      body: _showDrivers(),
    );
  }

  //build widget as prefered
  //i'll be using a listview.builder
  Widget _showDrivers() {
    //check if querysnapshot is null
    if (querySnapshot != null) {
      return ListView.builder(
        primary: false,
        itemCount: querySnapshot.documents.length,
        padding: EdgeInsets.all(12),
        itemBuilder: (context, i) {
          return SingleChildScrollView(
              child:Column(
            children: <Widget>[
//load data into widgets
              Text('Incident Report',style: TextStyle(fontSize: 20,color: Colors.red),),
              Text("${querySnapshot.documents[i].data['Condition']}",style: TextStyle(fontSize: 18),),
              Text('Location',style: TextStyle(fontSize: 20,color: Colors.red),),
              Text("${querySnapshot.documents[i].data['Prediction']}",style: TextStyle(fontSize: 18),),
              Text("${querySnapshot.documents[i].data['Time']}",style: TextStyle(fontSize: 18),),
              Text("-----------------------------------------------------------------------------------"),

            ],
          ),
          );
        },
      );
    } else {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  //get firestore instance
  getDriversList() async {
    return await Firestore.instance.collection('prediction').getDocuments();
  }
}