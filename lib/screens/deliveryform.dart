import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce/helpers/common.dart';
import 'package:flutter_ecommerce/helpers/style.dart';

import 'package:flutter_ecommerce/provider/user_provider.dart';
import 'package:flutter_ecommerce/screens/makePayment.dart';
import 'package:flutter_ecommerce/services/order.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';

import 'package:firebase_database/firebase_database.dart';

// final FirebaseApp app = new FirebaseApp(
//     options: FirebaseOptions(
//   appId: "1:1086450029846:android:938426879e1d34e0302c37",
//   apiKey: "AIzaSyDismxcRSkBsxtuMGA6Pex-3OXpaLWx1RU",
//   databaseURL: "https://ecommerce-50e4e.firebaseio.com",
// ));

class deliveryform extends StatefulWidget {
  @override
  _deliveryformState createState() => _deliveryformState();
}

class _deliveryformState extends State<deliveryform> {
  DatabaseReference itemRef;
  User _user;
  final _key = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  OrderServices _orderServices = OrderServices();
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User get user => _user;
  TextEditingController _transportname = TextEditingController();
  TextEditingController _number = TextEditingController();
  TextEditingController _name = TextEditingController();
  TextEditingController _agentname = TextEditingController();
  TextEditingController _country = TextEditingController();
  TextEditingController _dateoforder = TextEditingController();
  TextEditingController _discount = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Delivery Challan"),
      ),
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 20.0, // has the effect of softening the shadow
                  )
                ],
              ),
              child: Form(
                key: _formKey,
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _name,
                              decoration: InputDecoration(
                                  hintText: "Customer Name",
                                  icon: Icon(Icons.person_outline),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The name field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _agentname,
                              decoration: InputDecoration(
                                  hintText: "Agent Name",
                                  icon: Icon(Icons.directions),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _number,
                              decoration: InputDecoration(
                                  hintText: "Manual Order Number",
                                  icon: Icon(Icons.confirmation_number),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _transportname,
                              decoration: InputDecoration(
                                  hintText: "Transport Name",
                                  icon: Icon(Icons.info),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _discount,
                              decoration: InputDecoration(
                                  hintText: "Discount Rate in %",
                                  icon: Icon(Icons.location_city),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.3),
                        elevation: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: ListTile(
                            title: TextFormField(
                              controller: _dateoforder,
                              decoration: InputDecoration(
                                  hintText: "Date of Order",
                                  icon: Icon(Icons.graphic_eq),
                                  border: InputBorder.none),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "The field cannot be empty";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                    //   child: Material(
                    //     borderRadius: BorderRadius.circular(10.0),
                    //     color: Colors.grey.withOpacity(0.3),
                    //     elevation: 0.0,
                    //     child: Padding(
                    //       padding: const EdgeInsets.only(left: 12.0),
                    //       child: ListTile(
                    //         title: TextFormField(
                    //           controller: _country,
                    //           decoration: InputDecoration(
                    //               hintText: "Country",
                    //               icon: Icon(Icons.flag),
                    //               border: InputBorder.none),
                    //           validator: (value) {
                    //             if (value.isEmpty) {
                    //               return "The field cannot be empty";
                    //             }
                    //             return null;
                    //           },
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                      child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                          elevation: 0.0,
                          child: MaterialButton(
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                if (!await userProvider.delivery(
                                    _name.text,
                                    _number.text,
                                    _transportname.text,
                                    _discount.text,
                                    _agentname.text,
                                    _dateoforder.text,
                                    _country.text)) {
                                  _key.currentState.showSnackBar(
                                      SnackBar(content: Text("Failed")));
                                  return;
                                }
                                changeScreen(context, Stripe());
                              }
                            },
                            minWidth: MediaQuery.of(context).size.width,
                            child: Text(
                              "Add Item",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
