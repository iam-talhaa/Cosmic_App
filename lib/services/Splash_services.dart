import 'dart:async';

import 'package:cosmic_app/ui/Splash_screen.dart';
import 'package:cosmic_app/ui/login.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void ISLogin(BuildContext context) {
    Timer(
        Duration(seconds: 7),
        () => Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => Login())));
  }
}
