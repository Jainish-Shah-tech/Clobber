import 'package:flutter/material.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart' as slideDialog;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide Dialog Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // final String title;

  //  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      //
      body: WillPopScope(
        onWillPop: () async => Future.value(false),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
//           Custom App bar
              Stack(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              // _key.currentState.openEndDrawer();
                            },
                            child: Icon(Icons.menu))),
                  ),
                  Positioned(
                    top: 10,
                    right: 60,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                            onTap: () {
                              // changeScreen(context, CartScreen());
                            },
                            child: Icon(Icons.shopping_cart))),
                  ),
                  Positioned(
                    top: 10,
                    right: 100,
                    child: Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                            onTap: () {
                              // _key.currentState.showSnackBar(
                              //     SnackBar(content: Text("User profile")));
                            },
                            child: Icon(Icons.person))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
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
                    label: Text('Sales Order'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.note_add_outlined,
                      size: 10.0,
                    ),
                    label: Text('Delivery Challan'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 10.0,
                    ),
                    label: Text('Tax Invoice'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_chart,
                      size: 10.0,
                    ),
                    label: Text('Sales Return'),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
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
                    label: Text('Purchase Order'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.note_add_outlined,
                      size: 15.0,
                    ),
                    label: Text('Purchase Inward'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    label: Text('Purchase Return'),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
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
                    label: Text('Opening Stock'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      size: 15.0,
                    ),
                    label: Text('Pack Design'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.playlist_add_check,
                      size: 15.0,
                    ),
                    label: Text('Stock Transfer'),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
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
                    label: Text('Add New Design'),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {},
                    icon: Icon(
                      Icons.post_add_outlined,
                      size: 15.0,
                    ),
                    label: Text('Job Slip'),
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
