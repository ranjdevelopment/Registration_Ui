import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/views/widgets/button_widgtet.dart';
import 'package:login_and_signup_ui/views/widgets/text_form_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          TetxFormFieldWiget(
            hintText: "FullName",
            textInputType: TextInputType.name,
          ),
          SizedBox(
            height: 10.0,
          ),
          TetxFormFieldWiget(
            hintText: "Email Address",
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 10.0,
          ),
          TetxFormFieldWiget(
            hintText: "Passsword",
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 10.0,
          ),
          TetxFormFieldWiget(
            hintText: "PhoneNumber",
            textInputType: TextInputType.phone,
          ),
          SizedBox(
            height: 10.0,
          ),
          TetxFormFieldWiget(
            hintText: "Agency Name",
            textInputType: TextInputType.text,
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonWidgtet(
              title: "SignUp",
              btunColor: Colors.black,
              isTrue: false,
              textColor: Colors.white,image: AssetImage('assets/img/apple.png'),)
        ],
      ),
    );
  }
}
