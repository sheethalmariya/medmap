import 'package:flutter/material.dart';
import 'package:medmap/screen/verify/comp3/verifybody.dart';

class verify extends StatelessWidget {
  const verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: verifybody(),
    );
  }
}


