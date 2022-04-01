import 'package:cloud_firestore/cloud_firestore.dart';

class AddressModel {
  static const NAME = "name";
  static const TRANSPORTNAME = "transportname";
  static const NUMBER = "number";
  static const DATEOFORDER = "dateoforder";
  static const COUNTRY = "country";
  static const SHIPPING = "shipping";
  static const DISCOUNT = "discount";
  static const UID = "uid";

  String _uid;
  String _name;
  String _transportname;
  String _dateoforder;
  String _country;
  String _shipping;
  String _number;
  String _discount;

  String get uid => _uid;

  String get name => _name;

  String get trasnsportname => _transportname;

  String get discount => _discount;

  String get country => _country;

  String get shipping => _shipping;

  String get number => _number;

  String get dateoforder => _dateoforder;

  AddressModel.fromSnapshot(DocumentSnapshot snapshot) {
    _uid = snapshot.data()[UID];
    _name = snapshot.data()[NAME];
    _transportname = snapshot.data()[TRANSPORTNAME];
    _discount = snapshot.data()[DISCOUNT];
    _country = snapshot.data()[COUNTRY];
    _shipping = snapshot.data()[SHIPPING];
    _number = snapshot.data()[NUMBER];
    _dateoforder = snapshot.data()[DATEOFORDER];
  }

  AddressModel.fromMap(Map data) {
    _uid = data[UID];
    _name = data[NAME];
    _transportname = data[TRANSPORTNAME];
    _discount = data[DISCOUNT];
    _country = data[COUNTRY];
    _shipping = data[SHIPPING];
    _number = data[NUMBER];
    _dateoforder = data[DATEOFORDER];
  }

  Map<String, dynamic> toMap() {
    return {
      UID: _uid,
      NAME: _name,
      TRANSPORTNAME: _transportname,
      DISCOUNT: _discount,
      COUNTRY: _country,
      SHIPPING: _shipping,
      NUMBER: _number,
      DATEOFORDER: _dateoforder
    };
  }
}
