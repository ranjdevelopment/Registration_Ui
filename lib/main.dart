import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/views/registreation_ui.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const RegistrationUiView(),
    theme: ThemeData(
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      indicatorColor: Colors.transparent,
    ),
  ));
}
