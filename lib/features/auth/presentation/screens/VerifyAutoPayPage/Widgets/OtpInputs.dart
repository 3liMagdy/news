
import 'package:flutter/material.dart';

import 'OtpBox.dart';

class OtpInputs extends StatelessWidget {
  final controller;
  const OtpInputs(this.controller, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) =>  OtpBox(controller: controller,)),
    );
  }
}