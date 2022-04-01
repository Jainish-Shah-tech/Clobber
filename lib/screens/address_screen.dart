import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dashboard.dart';
import 'home.dart';

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

  bool isLoading;
  QuerySnapshot querySnapshot;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showDrivers(),
    );
  }

  //build widget as prefered
  //i'll be using a listview.builder

  Widget _showDrivers() {
    //check if querysnapshot is null
    if (querySnapshot != null) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          primary: false,
          itemCount: querySnapshot.documents.length,
          padding: EdgeInsets.all(40),
          itemBuilder: (context, i) {
            return Column(
              children: <Widget>[
//load data into widgets
                Text(
                    "Country: ${querySnapshot.documents[i].data()['country']}"),
                Text(
                    "DateOfOrder: ${querySnapshot.documents[i].data()['dateoforder']}"),
                Text(
                    "Discount: ${querySnapshot.documents[i].data()['discount']}"),
                Text("Name: ${querySnapshot.documents[i].data()['name']}"),
                Text("Number: ${querySnapshot.documents[i].data()['number']}"),
                Text(
                    "TransportName: ${querySnapshot.documents[i].data()['transportname']}"),
              ],
            );
          },
        ),
      );
    }
    return dashboard();
  }

  //get firestore instance
  getDriversList() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final User user = auth.currentUser;
    final uid = user.uid;
    return await FirebaseFirestore.instance
        .collection('address')
        .where("uid", isEqualTo: uid)
        .getDocuments();
  }
}
