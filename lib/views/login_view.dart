import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/views/widgets/button_widgtet.dart';
import 'package:login_and_signup_ui/views/widgets/text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TetxFormFieldWiget(
              hintText: "Email Address",
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const TetxFormFieldWiget(
              hintText: "Password",
              textInputType: TextInputType.visiblePassword,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const ButtonWidgtet(
              title: "Login",
              btunColor: Colors.black,
              textColor: Colors.white,
              isTrue: false,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    "Or",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidgtet(
                  title: "Continue with Google",
                  btunColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  isTrue: true,
                  image: const AssetImage('assets/img/apple.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidgtet(
                  title: "Continue with Google",
                  btunColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  isTrue: true,
                  image: const AssetImage('assets/img/google.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidgtet(
                  title: "Continue with Google",
                  btunColor: Colors.grey.shade200,
                  textColor: Colors.black,
                  isTrue: true,
                  image: const AssetImage('assets/img/facebook.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
