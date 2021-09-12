import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageflow/modules/home/home_page.dart';
import 'package:pageflow/modules/login/login_page.dart';

class AuthController {
  // ignore: unused_field
  var _isAuthenticated = false;
  // ignore: prefer_typing_uninitialized_variables
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthenticated = true;

      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const HomePage()));
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _isAuthenticated = false;

      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => const LoginPage()));
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
