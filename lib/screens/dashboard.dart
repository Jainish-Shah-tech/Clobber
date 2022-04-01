import 'package:flutter/material.dart';
import 'address_screen.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide Dialog Demo',
      home: dashboard(),
    );
  }
}

class dashboard extends StatefulWidget {
  // final String title;

  //  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    /**Our App Widget Tree Starts Here**/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //AppBar
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white54,
                child: SizedBox(
                  width: 350,
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.green[500],
                        //   radius: 40,
                        //   child: CircleAvatar(
                        //     backgroundImage: NetworkImage(
                        //         "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
                        //     radius: 100,
                        //   ), //CircleAvatar
                        // ), //CirclAvatar
                        SizedBox(
                          height: 0,
                        ), //SizedBox
                        Text(
                          'No job slips created yet!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        //Text
                        SizedBox(
                          height: 0,
                        ), //SizedBox
                        SizedBox(
                          width: 170,
                          child: RaisedButton(
                            onPressed: () => null,
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  // Icon(Icons.touch_app),
                                  Text('CREATE JOB SLIP',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ), //Row
                            ), //Padding
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white54,
                child: SizedBox(
                  width: 350,
                  height: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // CircleAvatar(
                        //   backgroundColor: Colors.green[500],
                        //   radius: 40,
                        //   child: CircleAvatar(
                        //     backgroundImage: NetworkImage(
                        //         "https://pbs.twimg.com/profile_images/1304985167476523008/QNHrwL2q_400x400.jpg"), //NetworkImage
                        //     radius: 100,
                        //   ), //CircleAvatar
                        // ), //CirclAvatar
                        SizedBox(
                          height: 0,
                        ), //SizedBox
                        Text(
                          'No sales order created yet!',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ), //Text
                        SizedBox(
                          height: 10,
                        ), //SizedBox
                        //Text
                        SizedBox(
                          height: 0,
                        ), //SizedBox
                        SizedBox(
                          width: 200,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoadDataFromFirestore()),
                              );
                            },
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  // Icon(Icons.touch_app),
                                  Text('CREATE SALES ORDER',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ), //Row
                            ), //Padding
                          ), //RaisedButton
                        ) //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _showDialog,
          icon: const Icon(Icons.add),
          label: Text('ADD'),
          backgroundColor: Colors.black,
        ),
      ), //Scaffold
    ); //MaterialApp
  }

  void _showDialog() {
    slideDialog.showSlideDialog(
      context: context,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        'Sales Transaction',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_chart,
                      size: 10.0,
                    ),
                    label: Text(
                      'Sales Order',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.note_add_outlined,
                      size: 10.0,
                    ),
                    label: Text(
                      'Delivery Challan',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 10.0,
                    ),
                    label: Text(
                      'Tax Invoice',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_chart,
                      size: 10.0,
                    ),
                    label: Text(
                      'Sales Return',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        'Purchase Transaction',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart,
                      size: 15.0,
                    ),
                    label: Text(
                      'Purchase Order',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.note_add_outlined,
                      size: 15.0,
                    ),
                    label: Text(
                      'Purchase Inward',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    label: Text(
                      'Purchase Return',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        'Stock In Out',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.style_rounded,
                      size: 15.0,
                    ),
                    label: Text(
                      'Opening Stock',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    label: Text(
                      'Pack Design',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.playlist_add_check,
                      size: 15.0,
                    ),
                    label: Text(
                      'Stock Transfer',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: new Text(
                        'Design & Production',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    label: Text(
                      'Add New Design',
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.post_add_outlined,
                      size: 15.0,
                    ),
                    label: Text(
                      'Job Slip',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
