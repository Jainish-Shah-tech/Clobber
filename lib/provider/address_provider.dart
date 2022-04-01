import 'package:flutter_ecommerce/models/address.dart';
import 'package:flutter_ecommerce/services/address.dart';
import 'package:flutter/material.dart';

class AddressProvider with ChangeNotifier {
  AddressModel _addressModel;

  AddressServices _addressServices = AddressServices();
  List<AddressModel> addresses = [];
  AddressModel get addressModel => _addressModel;

  Future address({String userId}) async {
    addresses = await _addressServices.getUserAddress(userId: userId);
    notifyListeners();
  }
}
