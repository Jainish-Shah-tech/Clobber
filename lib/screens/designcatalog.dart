import 'package:flutter/material.dart';

import 'AddDesign.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      // appBar: AppBar(
      //   title: Text('Raised Button'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   'Welcome',
              //   style: TextStyle(
              //       fontSize: 24,
              //       fontStyle: FontStyle.italic,
              //       fontWeight: FontWeight.bold),
              // ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              //   child: Text(
              //     'Your Design will appear here.',
              //     style: TextStyle(fontSize: 17),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
              //   child: Text(
              //     'Let us add your first design',
              //     style: TextStyle(fontSize: 17),
              //   ),
              // ),
              // Icon(Icons.add),
              // RaisedButton(
              //   child: Text("ADD NEW DESIGN"),
              //   onPressed: _changeText,
              //   color: Colors.blue,
              //   textColor: Colors.white,
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              //   splashColor: Colors.grey,
              // )
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 450, 8, 8),
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(50, 0, 50, 0))),
                  // <-- TextButton
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddProduct()));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 23.0,
                  ),
                  label:
                      Text('ADD NEW DESIGN', style: TextStyle(fontSize: 18.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _changeText() {
    // setState(() {
    //   if (msg.startsWith('F')) {
    //     msg = 'I have learned FlutterRaised example ';
    //   } else {
    //     msg = 'Flutter RaisedButton example';
    //   }
    // });
  }
}
