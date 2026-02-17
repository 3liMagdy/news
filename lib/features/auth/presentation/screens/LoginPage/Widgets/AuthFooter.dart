
import 'package:flutter/material.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter( {super.key,  required this.text, required this.textbutton, this.onPressed});
   final String text;
   final String textbutton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(text),
        TextButton(onPressed: onPressed, child:  Text(textbutton)),
      ],
    );
  }
}