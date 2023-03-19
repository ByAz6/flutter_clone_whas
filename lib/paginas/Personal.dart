import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Parcial 02',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.blueGrey[800],
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text(
                        'Brian Oswaldo Amaya Vásquez',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 24.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.blueGrey[100],
                        ),
                      ),
                      Text(
                        'Número de carnet',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                          fontSize: 18.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '25-1867-2019',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.blueGrey[800],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'César Adonay Alvarado Landaverde',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 24.0,
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                        width: 150.0,
                        child: Divider(
                          color: Colors.blueGrey[100],
                        ),
                      ),
                      Text(
                        'Número de carnet',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                          fontSize: 18.0,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '25-0916-2019',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          color: Colors.blueGrey[900],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}