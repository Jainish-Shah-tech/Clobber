import 'package:flutter/material.dart';

import 'address.dart';

class PlatformView extends StatelessWidget {
  const PlatformView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platform View',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const CreateInvoice(),
    );
  }
}

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({
    Key key,
  }) : super(key: key);

  @override
  _CreateInvoiceState createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  // Future<void> _launchPlatformCount() async {
  //   final platformCounter =
  //       await _methodChannel.invokeMethod<int>('switchView', _counter);
  //   setState(() => _counter = platformCounter);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home page'),
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded(
          //   child: Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
          //           style: Theme.of(context).textTheme.subtitle2,
          //         ),
          //         const SizedBox(height: 18),
          //         ElevatedButton(
          //           child: const Text('Continue in iOS view'),
          //           onPressed: _launchPlatformCount,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.only(bottom: 15, left: 5),
          //   child: Row(
          //     children: [
          //       const FlutterLogo(),
          //       Text(
          //         'Flutter',
          //         style: Theme.of(context).textTheme.headline5,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddAddressForm()),
          );
        },
        icon: const Icon(Icons.add),
        label: Text('Create Invoice'),
      ),
    );
  }
}
