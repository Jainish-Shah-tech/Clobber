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
      body: Center(
        child:
            RaisedButton(child: Text("Press to open dialog"), onPressed: () {}),
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
                    padding: const EdgeInsets.all(7),
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
              padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
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
                      style: TextStyle(fontSize: 11),
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
                      style: TextStyle(fontSize: 11),
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
                      style: TextStyle(fontSize: 11),
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
                    padding: const EdgeInsets.all(7),
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
              padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
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
                    padding: const EdgeInsets.all(7),
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
              padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
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
                      style: TextStyle(fontSize: 10),
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
                      style: TextStyle(fontSize: 10),
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
                    padding: const EdgeInsets.all(7),
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
              padding: const EdgeInsets.fromLTRB(10, 1, 1, 1),
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
                      style: TextStyle(fontSize: 10),
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
                      style: TextStyle(fontSize: 10),
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
