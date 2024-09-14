import 'package:flutter/material.dart';
import 'package:medmap/screen/otp/comp1/otpbody.dart';


class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: otpbody(),
    );
  }
}
