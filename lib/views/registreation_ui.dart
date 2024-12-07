import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/views/widgets/list_button.dart';

class RegistrationUiView extends StatelessWidget {
  const RegistrationUiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Registration Uii",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 30.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img/house2.jpg',
                ),
              )),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
