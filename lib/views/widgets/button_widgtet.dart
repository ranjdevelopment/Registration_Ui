import 'package:flutter/material.dart';

class ButtonWidgtet extends StatelessWidget {
  const ButtonWidgtet({
    super.key,
    required this.title,
    this.image,
    required this.btunColor,
    required this.isTrue,
    required this.textColor,
  });
  final String title;
  final AssetImage? image;
  final Color btunColor;
  final Color textColor;
  final bool isTrue;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      elevation: 0,
      minWidth: double.infinity,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: btunColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isTrue
              ? Container(
                  width: 30,
                  height: 30,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  decoration:
                      BoxDecoration(image: DecorationImage(image: image!)),
                )
              : const SizedBox(),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
