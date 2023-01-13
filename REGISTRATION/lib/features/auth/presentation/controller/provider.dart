import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {

  final emailControler=TextEditingController();
  final VerifcationControler=TextEditingController();
  final passwordControler=TextEditingController();
  final cpasswordControler=TextEditingController();
  final firstNameControler=TextEditingController();
  final lastNameControler=TextEditingController();
  final phoneControler=TextEditingController();
  final birthDateControler=TextEditingController();
  final martialStatusControler=TextEditingController();
  final cityControler=TextEditingController();
  final districtControler=TextEditingController();

  Future<void> _auth(String email, String password, String urlSegment) async {
    dynamic url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyAWYIVLPYWc4klktzgQYkmVoDYzRQCDB_g";

    try {
      final res = await http.post(url,
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true
          }));
      notifyListeners();
    } catch (e) {
      throw e;
    }
  }

  Future<void> regester(String email, String password) async {
    return _auth(email, password, "signUp");
  }

  Future<void> login(String email, String password) async {
    return _auth(email, password, "signInWithPassword");
  }
}
