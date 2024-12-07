import 'package:flutter/material.dart';
import 'package:login_and_signup_ui/views/login_view.dart';
import 'package:login_and_signup_ui/views/sign_up.dart';

class ListButtonWidget extends StatefulWidget {
  const ListButtonWidget({super.key});

  @override
  State<ListButtonWidget> createState() => _ListButtonWidgetState();
}

class _ListButtonWidgetState extends State<ListButtonWidget> {
  final List<String> buttonText = ['Login', 'Sign Up'];
  int tabIndex = 0;
  void toggleSelected(int index) {
    tabIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tabIndex == 0 ? "Welcome Back" : "Sign Up",
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              2,
              (index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      toggleSelected(index);
                    });
                  },
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 40,
                        decoration: BoxDecoration(
                          color: tabIndex == index
                              ? Colors.black
                              : Colors.grey[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            buttonText[index],
                            style: TextStyle(
                              color: tabIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        tabIndex == 0 ? const LoginView() : const SignUpView(),
      ],
    );
  }
}
