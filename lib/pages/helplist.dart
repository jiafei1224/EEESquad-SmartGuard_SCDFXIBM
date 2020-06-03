import 'package:flutter/material.dart';



class Helplist extends StatefulWidget {
  @override
  _HelplistState createState() => _HelplistState();
}

class _HelplistState extends State<Helplist> {
  bool SympCough = false;
  bool SympBreath = false;
  bool SympFever = false;
  bool SympLots = false;
  bool SympThroat = false;
  bool SympDiarr = false;
  bool SympBody = false;
  bool SympNose = false;
  bool Chronicy = false;
  bool Chronicn = false;
  bool Two=false;
  bool Five=false;
  bool Above=false;
  bool Supy=false;
  bool Seven= false;
  bool Supn= false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    SympCough = newValue;


    if (SympCough) {

      print("as");

    } else {
      // TODO: Forget the user
      print('no');
    }
  });

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(' Help Yourself!',style: TextStyle(fontSize: 30,
            fontFamily: 'ChelseaMarkeet'
        ),),
        centerTitle: true,

      ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
//            Container(
//              padding: const EdgeInsets.fromLTRB(16.0, 5.0, 16.0, 0),
//              child: Text("Current age?",
//                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//            ),
//            Container(
//              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
//              child: TextFormField(
//                decoration: InputDecoration(labelText: "Age", hintText: "Please key in a whole number (e.g. 50)."),
//              ),
//            ),
//            Container(
//              padding: const EdgeInsets.symmetric(vertical: 0 ,horizontal: 16.0),
//              child: Text("Are you suffering from any chronic diseases?",
//                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//            ),
//            Container(
//              padding: const EdgeInsets.symmetric(vertical: 0 ,horizontal: 16.0),
//              child: TextFormField(
//                  decoration: InputDecoration(labelText: "Y/N", hintText: "Key Y for Yes, N for No.",)
//              ),
//            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 1.0 ,horizontal: 10.0),
              child: Text("Age group",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('0-20'),
                        ),
                        Checkbox(
                          value: Two,
                          onChanged: (bool value) {
                            setState(() {
                              Two= value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('20-50'),
                        ),

                        Checkbox(
                          value: Five,
                          onChanged: (bool value) {
                            setState(() {
                              Five = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('50-70'),
                        ),
                        Checkbox(
                          value: Seven,
                          onChanged: (bool value) {
                            setState(() {
                              Seven = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('50-above'),
                        ),

                        Checkbox(
                          value: Above,
                          onChanged: (bool value) {
                            setState(() {
                              Above = value;
                            });
                          },
                        ),
                      ],
                    ),

                  ]),
            ),



            Container(
              padding: const EdgeInsets.symmetric(vertical: 1.0 ,horizontal: 10.0),
              child: Text("Symptoms present?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Cough'),
                        ),
                        Checkbox(
                          value: SympCough,
                          onChanged: _onRememberMeChanged
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Diffculty Breathing'),
                        ),

                        Checkbox(
                          value: SympBreath,
                          onChanged: (bool value) {
                            setState(() {
                              SympBreath = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Fever above 37.5'),
                        ),
                        Checkbox(
                          value: SympFever,
                          onChanged: (bool value) {
                            setState(() {
                              SympFever = value;
                            });
                          },
                        ),
                      ],
                    ),

                  ]),
            ),

            Container(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Sore Throat'),
                      ),
                      Checkbox(
                        value: SympThroat,
                        onChanged: (bool value) {
                          setState(() {
                            SympThroat = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Diarrhoae'),
                      ),
                      Checkbox(
                        value: SympDiarr,
                        onChanged: (bool value) {
                          setState(() {
                            SympDiarr = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Bodyache'),
                      ),
                      Checkbox(
                        value: SympBody,
                        onChanged: (bool value) {
                          setState(() {
                            SympBody = value;
                          });
                        },
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Past Chronic Dieases'),
                        ),

                        Checkbox(
                          value: Chronicy,
                          onChanged: (bool value) {
                            setState(() {
                              Chronicy = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Runny nose'),
                        ),
                        Checkbox(
                          value: SympNose,
                          onChanged: (bool value) {
                            setState(() {
                              SympNose = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text('Loss of taste'),
                        ),
                        Checkbox(
                          value: SympLots,
                          onChanged: (bool value) {
                            setState(() {
                              SympLots = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 1.0 ,horizontal: 10.0),
              child: Text("In the past 14 days, have you been in contact with anyone suspected/confirmed with COVID-19?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),

            Container(

              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('Yes, i have'),
                        ),
                        Checkbox(
                          value: Supy,
                          onChanged: (bool value) {
                            setState(() {
                              Supy = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Text('No'),
                        ),

                        Checkbox(
                          value: Supn,
                          onChanged: (bool value) {
                            setState(() {
                              Supn = value;
                            });
                          },
                        ),
                      ],
                    ),


                  ]),
            ),
          ]),
        floatingActionButton: FlatButton.icon(

          onPressed: () {
            Navigator.pushNamed(context, '/out');

          },
          icon: Icon(Icons.add_circle,color: Colors.white,size: 25,),
          color: Colors.red,

          label: Text('Submit',style: TextStyle(fontSize: 15,letterSpacing: 0.5,color: Colors.white,)),
        )

    );
  }
}

